
�
booking.protocom.pseudomuto.protokit.v1"�
BookingStatus
id (Rid 
description (	RdescriptionU
status_code (24.com.pseudomuto.protokit.v1.BookingStatus.StatusCodeR
statusCode"'

StatusCode
OK�
BAD_REQUEST�*d����"�
Booking

vehicle_id (R	vehicleId
customer_id (R
customerIdA
status (2).com.pseudomuto.protokit.v1.BookingStatusRstatus+
confirmation_sent (RconfirmationSent0
payment_received (:falseRpaymentReceived%
reference_num (H RreferenceNum%
reference_tag (	H RreferenceTag2S
optional_field_1).com.pseudomuto.protokit.v1.BookingStatuse (	RoptionalField1B
things*(
BookingType
	IMMEDIATEd

FUTUREe2o
BookingService]
BookVehicle#.com.pseudomuto.protokit.v1.Booking).com.pseudomuto.protokit.v1.BookingStatus:J
country).com.pseudomuto.protokit.v1.BookingStatusd (	:chinaRcountryJ�
  L

  
v
"l*
 Booking related messages.

 This file is really just an example. The data model is completely fictional.

6
  **
 Service for handling vehicle bookings.



 
_
  4R/ Used to book a vehicle. Pass in a Booking and a BookingStatus will be returned.


  

  

  %2
;
  "/*
 Represents the status of a vehicle booking.



 
/
  !*
 A flag for the status result.


  

   " OK result.


   

   

  " BAD result.


  

  
)
  &"/ Unique booking status ID.


  


  

  

  $%
:
 &"-/ Booking status description. E.g. "Active".


 


 

 

 $%
*
 &"/ The status of this status?


 


 

 !

 $%


 !

  !

  !

  !
!
% ( File-level extension

1
 '4& The country the booking occurred in. 


 %


 '



 '


 '


 '


 ' 3


 '+2
$
 - 0*
 The type of booking.



 -
!
  ." Immediate booking.


  .

  .

 /" Future booking.


 /

 /
h
7 L\*
 Represents the booking of a vehicle.

 Vehicles are some cool shit. But drive carefully!



7
%
 8$"/ ID of booked vehicle.


 8


 8

 8

 8"#
1
9$"$/ Customer that booked the vehicle.


9


9

9

9"#
&
:$"/ Status of the booking.


:


:

:

:"#
3
=&&* Has booking confirmation been sent? 

=


=

=!

=$%
*
@7* Has payment been received? 

@


@

@ 

@#$

@%6

@05

 BE

 B
+
C" the numeric reference number


C	

C


C
)
D" the reference tag (string)


D


D

D
2
IK2% Nested extentions are also a thing.

?
 J+"2 An optional field to be used however you please.


 I	

 J

 J

 J$

 J'*
�*
google/protobuf/any.protogoogle.protobuf"6
Any
type_url (	RtypeUrl
value (RvalueBo
com.google.protobufBAnyProtoPZ%github.com/golang/protobuf/ptypes/any�GPB�Google.Protobuf.WellKnownTypesJ�)
 �
�
 2� Protocol Buffers - Google's data interchange format
 Copyright 2008 Google Inc.  All rights reserved.
 https://developers.google.com/protocol-buffers/

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

     * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following disclaimer
 in the documentation and/or other materials provided with the
 distribution.
     * Neither the name of Google Inc. nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


 

" ;

� " ;

� "

�  "

�  "

� ":

# <

�# <

�#

� #

� #

�#;

$ ,

�$ ,

�$

� $

� $

�$+

% )

�% )

�%

� %

� %

�%(

& "

�& "

�&

� &

� &

�&!

' !

�' !

�'

� '

� '

�' 
�
 o �� `Any` contains an arbitrary serialized protocol buffer message along with a
 URL that describes the type of the serialized message.

 Protobuf library provides support to pack/unpack Any values in the form
 of utility functions or additional generated methods of the Any type.

 Example 1: Pack and unpack a message in C++.

     Foo foo = ...;
     Any any;
     any.PackFrom(foo);
     ...
     if (any.UnpackTo(&foo)) {
       ...
     }

 Example 2: Pack and unpack a message in Java.

     Foo foo = ...;
     Any any = Any.pack(foo);
     ...
     if (any.is(Foo.class)) {
       foo = any.unpack(Foo.class);
     }

  Example 3: Pack and unpack a message in Python.

     foo = Foo(...)
     any = Any()
     any.Pack(foo)
     ...
     if any.Is(Foo.DESCRIPTOR):
       any.Unpack(foo)
       ...

 The pack methods provided by protobuf library will by default use
 'type.googleapis.com/full.type.name' as the type URL and the unpack
 methods only use the fully qualified type name after the last '/'
 in the type URL, for example "foo.bar.com/x/y.z" will yield type
 name "y.z".


 JSON
 ====
 The JSON representation of an `Any` value uses the regular
 representation of the deserialized, embedded message, with an
 additional field `@type` which contains the type URL. Example:

     package google.profile;
     message Person {
       string first_name = 1;
       string last_name = 2;
     }

     {
       "@type": "type.googleapis.com/google.profile.Person",
       "firstName": <string>,
       "lastName": <string>
     }

 If the embedded message type is well-known and has a custom JSON
 representation, that representation will be embedded adding a field
 `value` which holds the custom JSON in addition to the `@type`
 field. Example (for message [google.protobuf.Duration][]):

     {
       "@type": "type.googleapis.com/google.protobuf.Duration",
       "value": "1.212s"
     }




 o
�
  �� A URL/resource name whose content describes the type of the
 serialized protocol buffer message.

 For URLs which use the scheme `http`, `https`, or no scheme, the
 following restrictions and interpretations apply:

 * If no scheme is provided, `https` is assumed.
 * The last segment of the URL's path must represent the fully
   qualified name of the type (as in `path/google.protobuf.Duration`).
   The name should be in a canonical form (e.g., leading "." is
   not accepted).
 * An HTTP GET on the URL must yield a [google.protobuf.Type][]
   value in binary format, or produce an error.
 * Applications are allowed to cache lookup results based on the
   URL, or have them precompiled into a binary to avoid any
   lookup. Therefore, binary compatibility needs to be preserved
   on changes to types. (Use versioned type names to manage
   breaking changes.)

 Schemes other than `http`, `https` (or the empty scheme) might be
 used with implementation specific semantics.



  �o

  �

  �	

  �
W
 �I Must be a valid serialized protocol buffer of the above specified type.


 ��

 �

 �

 �bproto3
�1
google/protobuf/timestamp.protogoogle.protobuf";
	Timestamp
seconds (Rseconds
nanos (RnanosB~
com.google.protobufBTimestampProtoPZ+github.com/golang/protobuf/ptypes/timestamp��GPB�Google.Protobuf.WellKnownTypesJ�/
 �
�
 2� Protocol Buffers - Google's data interchange format
 Copyright 2008 Google Inc.  All rights reserved.
 https://developers.google.com/protocol-buffers/

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

     * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following disclaimer
 in the documentation and/or other materials provided with the
 distribution.
     * Neither the name of Google Inc. nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


 

" ;

� " ;

� "

�  "

�  "

� ":

# 

�# 

�#

� #

� #

�#

$ B

�$ B

�$

� $

� $

�$A

% ,

�% ,

�%

� %

� %

�%+

& /

�& /

�&

� &

� &

�&.

' "

�' "

�'

� '

� '

�'!

( !

�( !

�(

� (

� (

�( 
�
 x �� A Timestamp represents a point in time independent of any time zone
 or calendar, represented as seconds and fractions of seconds at
 nanosecond resolution in UTC Epoch time. It is encoded using the
 Proleptic Gregorian Calendar which extends the Gregorian calendar
 backwards to year one. It is encoded assuming all minutes are 60
 seconds long, i.e. leap seconds are "smeared" so that no leap second
 table is needed for interpretation. Range is from
 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z.
 By restricting to that range, we ensure that we can convert to
 and from  RFC 3339 date strings.
 See [https://www.ietf.org/rfc/rfc3339.txt](https://www.ietf.org/rfc/rfc3339.txt).

 # Examples

 Example 1: Compute Timestamp from POSIX `time()`.

     Timestamp timestamp;
     timestamp.set_seconds(time(NULL));
     timestamp.set_nanos(0);

 Example 2: Compute Timestamp from POSIX `gettimeofday()`.

     struct timeval tv;
     gettimeofday(&tv, NULL);

     Timestamp timestamp;
     timestamp.set_seconds(tv.tv_sec);
     timestamp.set_nanos(tv.tv_usec * 1000);

 Example 3: Compute Timestamp from Win32 `GetSystemTimeAsFileTime()`.

     FILETIME ft;
     GetSystemTimeAsFileTime(&ft);
     UINT64 ticks = (((UINT64)ft.dwHighDateTime) << 32) | ft.dwLowDateTime;

     // A Windows tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z
     // is 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z.
     Timestamp timestamp;
     timestamp.set_seconds((INT64) ((ticks / 10000000) - 11644473600LL));
     timestamp.set_nanos((INT32) ((ticks % 10000000) * 100));

 Example 4: Compute Timestamp from Java `System.currentTimeMillis()`.

     long millis = System.currentTimeMillis();

     Timestamp timestamp = Timestamp.newBuilder().setSeconds(millis / 1000)
         .setNanos((int) ((millis % 1000) * 1000000)).build();


 Example 5: Compute Timestamp from current time in Python.

     timestamp = Timestamp()
     timestamp.GetCurrentTime()

 # JSON Mapping

 In JSON format, the Timestamp type is encoded as a string in the
 [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format. That is, the
 format is "{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z"
 where {year} is always expressed using four digits while {month}, {day},
 {hour}, {min}, and {sec} are zero-padded to two digits each. The fractional
 seconds, which can go up to 9 digits (i.e. up to 1 nanosecond resolution),
 are optional. The "Z" suffix indicates the timezone ("UTC"); the timezone
 is required, though only UTC (as indicated by "Z") is presently supported.

 For example, "2017-01-15T01:30:15.01Z" encodes 15.01 seconds past
 01:30 UTC on January 15, 2017.

 In JavaScript, one can convert a Date object to this format using the
 standard [toISOString()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString]
 method. In Python, a standard `datetime.datetime` object can be converted
 to this format using [`strftime`](https://docs.python.org/2/library/time.html#time.strftime)
 with the time format spec '%Y-%m-%dT%H:%M:%S.%fZ'. Likewise, in Java, one
 can use the Joda Time's [`ISODateTimeFormat.dateTime()`](
 http://joda-time.sourceforge.net/apidocs/org/joda/time/format/ISODateTimeFormat.html#dateTime())
 to obtain a formatter capable of generating timestamps in this format.





 x
�
  }� Represents seconds of UTC time since Unix epoch
 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
 9999-12-31T23:59:59Z inclusive.


  }x

  }

  }

  }
�
 �� Non-negative fractions of a second at nanosecond resolution. Negative
 second values with fractions must still have non-negative nanos values
 that count forward in time. Must be from 0 to 999,999,999
 inclusive.


 �}

 �

 �

 �bproto3
�
todo_import.protocom.pseudomuto.protokit.v1"'
ListItemDetails
notes (	Rnotes*!
ListItemDetailEnum
DEFAULT J�
  

  
g
"] This is really just in place to make sure imported files are included in the parsed result.

$
   Details for list items



 
&
  " Some notes for the item


  

  

  	

  
5
  ) A dummy enum to ensure importing works.



 
!
  " The default value.


  	

  bproto3
�%

todo.protocom.pseudomuto.protokit.v1google/protobuf/any.protogoogle/protobuf/timestamp.prototodo_import.proto"�
List
id (Rid
name (	Rname8
type (2$.com.pseudomuto.protokit.v1.ListTypeRtype9

created_at (2.google.protobuf.TimestampR	createdAt.
details (2.google.protobuf.AnyRdetails"'
CreateListRequest
name (	Rname"�
CreateListResponse4
list (2 .com.pseudomuto.protokit.v1.ListRlistM
status (25.com.pseudomuto.protokit.v1.CreateListResponse.StatusRstatus
Status
code (Rcode"�
Item
id (Rid
title (	RtitleE
	completed (2'.com.pseudomuto.protokit.v1.Item.StatusR	completed9

created_at (2.google.protobuf.TimestampR	createdAtE
details (2+.com.pseudomuto.protokit.v1.ListItemDetailsRdetails"$
Status
PENDING 
	COMPLETED"]
AddItemRequest
list_id (RlistId
title (	Rtitle
	completed (R	completed"G
AddItemResponse4
item (2 .com.pseudomuto.protokit.v1.ItemRitem*(
ListType
	REMINDERS 
	CHECKLIST2�
Todok

CreateList-.com.pseudomuto.protokit.v1.CreateListRequest..com.pseudomuto.protokit.v1.CreateListResponseb
AddItem*.com.pseudomuto.protokit.v1.AddItemRequest+.com.pseudomuto.protokit.v1.AddItemResponseBZtodoJ�
 Y
D
 : Top-level comments are attached to the syntax directive.

	
 "
	
(
	

 
	
!

 

�  

� 

�  

�  

� 
�
"� The official documentation for the Todo API.

 Some parts of this file are unnecessarily complicated. In order to have a test for nested messages, enums, etc. I've
 added some odd looking implementation details. So you know, don't use this in real life for a todo service.

 The get started run the following:

 * `make setup`
 * `make test`

m
  a A service for managing "todo" items.

 Add, complete, and remove your items on your todo lists.



 
%
  A Create a new todo list


  

  "

  -?
P
 8C Add an item to your list

 Adds a new item to the specified list.


 

 

 '6
*
 ! $ An enumeration of list types



 !
"
  "" The reminders type.


  "

  "
"
 #" The checklist type.


 #

 #

 ' - A list object.



 '
"
  (+" The id of the list.


  ('

  (

  (


  ()*
$
 )+" The name of the list.


 )(+

 )

 )	

 ))*

 *+" The type of list


 *)+

 *


 *

 *)*
*
 ++" The timestamp for creation.


 +*+

 +

 +&

 +)*
+
 ,+" Some arbitrary list details.


 ,++

 ,

 ,

 ,)*
7
0 3+ A request object for creating todo lists.



0
$
 2 The name of the list.


 20

 2

 2	

 2
3
6 >' A successfully created list response.



6
*
 8: An internal status message


 8

!
  9" The status code.


  98

  9


  9

  9
)
 <" The list that was created.


 <:

 <

 <

 <
+
=" The status for the response.


=<

=

=	

=

A M A list item



A
3
 CF% An enumeration of possible statuses


 C
$
  D" The pending status.


  D

  D
&
 E" The completed status.


 E

 E
"
 H+" The id of the item.


 HF

 H

 H


 H)*
%
I+" The title of the item.


IH+

I

I	

I)*
.
J+"! The current status of the item.


JI+

J

J	

J)*
*
K+" The timestamp for creation.


KJ+

K

K&

K)*

L+" Item details.


LK+

L

L

L)*
5
P T) A request message for adding new items.



P
,
 Q" The id of the list to add to.


 QP

 Q

 Q

 Q
%
R" The title of the item.


RQ

R

R	

R
4
S"' Whether or not the item is completed.


SR

S

S

S
1
W Y% A successfully added item response.



W
,
 X" The list item that was added.


 XW

 X

 X

 XPbproto3