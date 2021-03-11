Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B691337553
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Mar 2021 15:20:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lKMB3-00013P-J7; Thu, 11 Mar 2021 14:20:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@ysedm.com.cn>) id 1lKMB2-000133-Bc
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Mar 2021 14:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Type:Mime-Version:Reply-To:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WCpO9qj9kMMmUAqwITyzcCR2SzFWM/71IIYtqLiZx3g=; b=AD8x7xtZ4sqzdk7FJG3PpVMRhM
 e4jqEsx2hNQc+y0mXb6tqkENg1SOr/P+scfbv5IoGRtrndCKDQim85mQeVxGpAJ2W6WIsuc3Xxkao
 QLRcmmTraX5OD+4UN3taw1/A+NKKBq91h+UtDEhnPV1AYqvXDaMtOEXMZ7uelyBzuU0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Type:Mime-Version:Reply-To:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WCpO9qj9kMMmUAqwITyzcCR2SzFWM/71IIYtqLiZx3g=; b=l
 zTmSccQBhf9WxJnKByUzwXXSviP+ekFrPqR77S4Yp1U7grluL2LGoTDpdidN7qIgObH7c4Iypbtjv
 pNB7G3jNhe4j4Da7NduaFVouZOoiPGYnIc7r9LpmefZRUD94KUS79WQC9GcsGM7dwQjWfmLpBK2HZ
 XK3Bm0zP/SumrUdc=;
Received: from [185.185.41.109] (helo=hu4.sosung.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lKMAc-00GSLd-Oa
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Mar 2021 14:20:36 +0000
Received: from edm01.bossedm.com (edm01.chinaemail.cn [180.76.132.54])
 by hu4.sosung.net (Postfix) with ESMTPS id 7B554375B0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 11 Mar 2021 04:32:51 -0500 (EST)
Received: from unknown (unknown [127.0.0.1])
 by edm01.bossedm.com (Bossedm) with SMTP id 3AE961216FA
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 11 Mar 2021 17:32:49 +0800 (CST)
Date: Thu, 11 Mar 2021 17:32:49 +0800 (CST)
From: "=?utf-8?B?WXVtaSA=?=" <yumi@hardfindcomponents.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
X-Notify-Mail: No
Message-ID: <1858#76199#v9fs-developer@lists.sourceforge.net#b7685d8384c9a4ec01e29ab9bcfc16eb#1615455169020>
X-Iszbb: Yes
X-ZZY-MESSAGE-ID: FA202007B9587C0A000000000000C1E34960000000000800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ysedm.com.cn; s=s9527; 
 t=1615455169; bh=cG80tJ/tHUjETag3MvHQIHiCFIsZLIfZcCz9XRTczQY=; 
 h=Date:From:Subject:Message-ID;
 b=zNSj2C4+yo6165h7lasV4Ft1g9zgSf4nLcZp65PjHWnLEWVeYSGdqQcYofOB93oeJ
 v87TBlGc6kKq34LfeZppVL0do2TNM8m5Zd05mFK3PbR4IiNLWX7t9EHjVIWRh9UU5E
 nX3nG+KCi26yM1m/cAp0p9LfaYCwxuQtOn6+LUbU=
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ysedm.com.cn]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lKMAc-00GSLd-Oa
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] 
 =?utf-8?q?=5Felectronics=5Fcomponents=5Fsupply?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: yumi@hardfindcomponents.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0KCQ0KCQkmbmJzcDsmbmJzcDtIYXJkJm5ic3A7RmluZCZuYnNwO0VsZWN0cm9u
aWNzIEx0ZC4gDQoJDQoJDQoJCSZuYnNwOyANCgkNCgkNCgkJRGVhciBGcmllbmQsIA0KCQ0KCQ0K
CQlUaGlzIGlzIFl1bWkgZnJvbSBIYXJkIEZpbmQgRWxlY3Ryb25pY3MgTHRkKHd3dy5oYXJkZmlu
ZGVsZWN0cm9uaWNzLmNvbSkmbmJzcDt3aGljaCBpcyBhIHByb2Zlc3Npb25hbCBlbGVjdHJvbmlj
cyBkaXN0cmlidXRvciB3aXRoIDEwIHllYXJzIG9mIGV4cGVyaWVuY2VzLiZuYnNwOw0KICANCgkN
CgkNCgkJUmVjZW50bHkgDQptb3N0IG9mIG91ciBjdXN0b21lcnMgZnJvbSB5b3VyIGNvdW50cnkg
dXN1YWxseSBidXkgYmVsb3cgcGFydHMgZnJvbSANCnVzOg0KDQpJQzombmJzcDtUSeOAgU1pY3Jv
Y2hpcOOAgUFE44CBWGlsaW5444CBTlhQ44CBQWx0ZXJh44CBQ3lwcmVzc+OAgUxU44CBSVLjgIFN
YXhpbeOAgVNhbkRpc2vjgIFGcmVlc2NhbGUuLg0KTUxDQyANCkNhcGFjaXRvciAmYW1wOyZuYnNw
O1Jlc2lzdG9yOiZuYnNwO1lBR0VPIOOAgVNhbXN1bmfjgIFBVljjgIFNdXJhdGEuLg0KRGlvZGUg
DQomYW1wO1RyYW5zaXN0b3I6Jm5ic3A7U1TjgIFWaXNoYXkuLg0KDQpQbHMgDQpjaGVjayBvdXIg
aG90Jm5ic3A7b2ZmZXIsIHdhaXQmbmJzcDtmb3IgeW91ciBraW5kbHkgUkZROiAgDQoJDQoJDQoJ
CQ0KUkMwNDAySlItMDcxS0wgMTBLL1IgWUFHRU8gMjAyMCsgMC4wMDEzdXNkIA0KUkMwNDAySlIt
MDczSzNMIDEwSy9SIFlBR0VPIDIwMjArIDAuMDAwNnVzZCANClJDMDQwMkpSLTA3NEs3TCAxMEsv
UiBZQUdFTyAyMDIwKyAwLjAwMDZ1c2QgDQpSQzA0MDJKUi0wNzEwS0wgMTBLL1IgWUFHRU8gMjAy
MCsgMC4wMDA3NHVzZCANClJDMDQwMkpSLTA3MTVLTCAxMEsvUiBZQUdFTyAyMDIwKyAwLjAwMDZ1
c2QgDQpSQzA0MDJKUi0wNzE4S0wgMTBLL1IgWUFHRU8gMjAyMCsgMC4wMDA2dXNkIA0KUkMwNDAy
SlItMDcyMktMIDEwSy9SIFlBR0VPIDIwMjArIDAuMDAwNnVzZCANClJDMDQwMkpSLTA3MjdLTCAx
MEsvUiBZQUdFTyAyMDIwKyAwLjAwMDZ1c2QgDQpSQzA0MDJKUi0wNzMzS0wgMTBLL1IgWUFHRU8g
MjAyMCsgMC4wMDA2dXNkIA0KUkMwNDAySlItMDc0N0tMIDEwSy9SIFlBR0VPIDIwMjArIDAuMDAx
MXVzZCANClJDMDYwM0pSLTA3NjhLTCAxMEsvUiBZQUdFTyAyMDIwKyAwLjAwMDZ1c2QgDQpSQzA0
MDJKUi0wNzkxS0wgMTBLL1IgWUFHRU8gMjAyMCsgMC4wMDA2dXNkDQoNCiANCgkNCgkNCgkJIEtl
ZXAgc21pbGluZyBldmVyeSBkYXkmbmJzcDsoKu+/oynvv6MpIA0KCQ0KCQ0KCQkmbmJzcDsgDQoJ
DQoJDQoJCVl1bWkgDQoJDQoJDQoJCUFjY291bnQgDQpNYW5hZ2VyICANCgkNCgkNCgkJSGFyZCBG
aW5kIEVsZWN0cm9uaWNzIEx0ZC4gDQoJDQoJDQoJCXNvdXJjaW5nIGhhcmQgZmluZCBlbGVjdHJv
bmljIGNvbXBvbmVudHMgDQoJDQoJDQoJCQ0KMzE1LCBTaGFoZSBSb2QsIExvbmcgR2FuZyBEaXN0
cmljdCwgU2hlbnpoZW4sIENOLCA1MTgwMDANClRlbDogKzg2LTc1NS04NDE4IDgxMDMmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsgIA0KCQ0KCQ0KCQlTa3lwZS9FbWFpbDogeXVtaUBoYXJkZmluZGVsZWN0cm9uaWNzLmNvbSAN
CgkNCgkNCgkJTGlua2VkbG46IHd3dy5saW5rZWRpbi5jb20vaW4veXVtaS1nYW8gDQoJDQoJDQoJ
CUZhY2Vib29rOiBmYWNlYm9vay5jb20vWXVtaWhhcmRmaW5kIA0KCQ0KCQ0KCQlXZWI6IGh0dHA6
Ly93d3cuaGFyZGZpbmRlbGVjdHJvbmljcy5jb20vIA0KCQ0KCQ0KCQkmbmJzcDsgDQoJDQoJDQoJ
CQ0KSWYgeW91IGRvbid0IHdhbnQgdG8gcmVjZWl2ZSB0aGlzIG1haWwsIHBscyByZXR1cm4gd2l0
aCAicmVtb3ZlIiBvbiB0aGUgc3ViamVjdCBsaW5lLiANCgkNCgkNCgkJJm5ic3A7IA0KCQ0KDQoN
Cg0KDQoJ5qGj6ZO6572R4oCU4oCU5Zyo57q/5paH5qGj5YWN6LS55aSE55CGIA0K5aaC5p6c5L2g
5LiN5oOz5YaN5pS25Yiw6K+l5Lqn5ZOB55qE5o6o6I2Q6YKu5Lu277yM6K+354K55Ye76L+Z6YeM
6YCA6K6iCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
