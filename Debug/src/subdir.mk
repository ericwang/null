################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/empty.cpp 

OBJS += \
./src/empty.o 

CPP_DEPS += \
./src/empty.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo '���ڹ����ļ��� $<'
	@echo '���ڵ��ã� GNU C++ ������'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo '�ѽ��������� $<'
	@echo ' '


