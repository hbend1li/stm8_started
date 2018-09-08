#include "fireworks.h"

// string copy by delimiter
char *strdcpy(char *string_, char delimiter_, char position_)
{
  unsigned char j=0, length= strlen(string_);
  char *str_result= malloc((length+1) * sizeof(char));
  for (unsigned char i = 0; i < length; ++i){
    if ((string_[i] == delimiter_ && position_ == 0) || (string_[i] == '\r') || (string_[i] == '\n') || (string_[i] == '\0'))
      {
        break;
      }
    else if (string_[i] != delimiter_ && position_ == 0)
      {
        str_result[j] = string_[i];
        j++;
      }
    else if (string_[i] == delimiter_ && position_ != 0)
      {
        position_--;
      }
  }
  str_result[j] = '\0';
  return str_result;
}

unsigned char strtoint  (char *string_)
{
  char length = strlen(string_);
  unsigned long i=1, x=0;
  while (length)
  {
    length--;
    x += ( (string_[length]-48) * i );
    i *= 10;
  }
  return x;
}
