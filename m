Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 160AD218D62
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Jul 2020 18:46:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtDD8-0002YR-2n; Wed, 08 Jul 2020 16:46:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <marehxae@myjcbs.co.jp>) id 1jtDD7-0002YK-8h
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Jul 2020 16:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DF2CwIZ+MrZwXokOJHM+CW2O0HVXLDGmfG9dMG+S+Ro=; b=CKmRJEOIt9CJO0EHg5T0C2YXam
 lhoWQl9XtWscRJzLj157AyJzIdiTSpIv5Y8jlS+wX4r3QV+jNHs1tC7ewewpD6LynqgcqNubUWO/t
 YFouTCVl2DQmAYEBkPmFBmwcKBsu5y1GvwQHK9hS2sAn9RkDzyzZPq8eeNjAPs17dUqY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DF2CwIZ+MrZwXokOJHM+CW2O0HVXLDGmfG9dMG+S+Ro=; b=D
 bInRyDF5ysPiev8q58oztr0M3UHQnluy9Rj5RpoNXTHZQR1Pm9lrsJ03aaxHLpc1sTz5w3F06iUnU
 BQkbqFXUmq+7/XFPOyEVU5xkK7oGeEKK3F64BD5Oms4D77dQGyyGGHRf4B9kKdKXwRTCD+WsBjKWx
 GHtXybpZXjK9OD6M=;
Received: from [128.1.37.133] (helo=myjcbs.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jtDD5-00HU1l-2a
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Jul 2020 16:46:17 +0000
Message-ID: <20200709004615555376@myjcbs.co.jp>
From: "MyJcbs" <marehxae@myjcbs.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 9 Jul 2020 00:46:10 +0800
MIME-Version: 1.0
X-mailer: Tzpjymmvb 6
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_PHISH Contains a Phishing URL listed in the Spamhaus DBL
 blocklist [URIs: xxwy.uk.com]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: xxwy.uk.com]
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in DNS
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1jtDD5-00HU1l-2a
Subject: [V9fs-developer] =?utf-8?b?44GK5a6i5qeY44GuSkNC44Ki44Kr44Km44Oz?=
	=?utf-8?b?44OI44GM44Ot44OD44Kv44GV44KM44Gm44GE44KLIOeVquWPt++8mg==?=
	=?utf-8?b?44CMNDgwMjg1NDjjgI0=?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQrmnKzjg6Hjg7zjg6vjga/jg4njg6HjgqTjg7Pjga7pgYvnlKjvvIjjg6Hjg7zjg6vp
gIHlj5fkv6HjgoTjg5vjg7zjg6Djg5rjg7zjgrjjga7ooajnpLrvvInjgavplqLjgo/jgosNCuOA
gOmHjeimgeOBqumAmuefpeOBqOOBquOCiuOBvuOBmeOAgg0K4pag44CA4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBDQrjgIDiiLTigKXiiLXigKXiiLTigKXiiLXi
gKXiiLTigKXiiLTigKXiiLXigKXiiLTigKXiiLXigKXiiLTigKXiiLTigKXiiLXigKXiiLTigKXi
iLXigKXiiLTigKXiiLTigKXiiLXigKXiiLQNCiANCuOBguOBquOBn+OBruOCr+ODrOOCuOODg+OD
iOOCq+ODvOODieWPo+W6p+OBjOesrOS4ieiAheOBq+OCiOOBo+OBpuS9v+eUqOOBleOCjOOBpuOB
hOOCi+OBk+OBqOOCkuaknOefpeOBl+OBn+OBruOBp+OAgeOBguOBquOBn+OBruWPo+W6p+OBjOiz
h+mHkeOBruWuieWFqOOBruOBn+OCgeOBq+WHjee1kOOBleOCjOOBn+OBruOBp+OBmeOBjOOAgeOB
meOBkOOBq1dFQuOCteODvOODk+OCuUlE44Go44OR44K544Ov44O844OJ44KS5YaN55m76Yyy44GX
44Gm44CB5Yi26ZmQ44KS6Kej6Zmk44GX44Gq44GR44KM44Gw44Gq44KK44G+44Gb44KTDQogDQrl
pInmm7TjgpLjgZQgV0VC44K144O844OT44K544KI44KK44GK55Sz6L6844G/44GP44Gg44GV44GE
44CCDQogDQogDQrilqAg5aSJ5pu044KS44GUIOaWueazlQ0K4pa8TXlKQ0Ljg63jgrDjgqTjg7Pj
ga/jgZPjgaHjgokNCmh0dHA6Ly9wb2xpY2VvZmZpY2VyLnh4d3kudWsuY29tDQogDQogDQogDQog
DQrvvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ0NCuOAgOagquW8
j+S8muekvuOCuOOCp+ODvOOCt+ODvOODk+ODvCANCuOAgOadseS6rOmDvea4r+WMuuWNl+mdkuWx
sTUtMS0yMuOAgOmdkuWxseODqeOCpOOCuuOCueOCr+OCqOOCouOAgOOAkjEwNy04Njg2DQrjgIDi
gLvmnKzjg6Hjg7zjg6vjga/pgIHkv6HlsILnlKjjgafjgZnjgIINCuOAgCAg44GK5ZWP44GE5ZCI
44KP44Gb44Gv5LiK44GuVVJM44Gu44CB5bCC55So44OV44Kp44O844Og44KI44KK44GK6aGY44GE
44GX44G+44GZ44CCDQrvvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ0NCuOAgOOAjE15SkNCIEV4cHJlc3MgTmV3c+OAjeOBq+aOsui8ieOBleOCjOOBpuOBhOOCi+OB
meOBueOBpuOBruiomOS6i+OAgQ0K44CA5paH56ug562J44Gu54Sh5pat6Lui6LyJ44KS56aB5q2i
44GX44G+44GZ44CCDQrjgIDokZfkvZzmqKnjga/jgZnjgbnjgabjgIHmoKrlvI/kvJrnpL7jgrjj
gqfjg7zjgrfjg7zjg5Pjg7zjgavluLDlsZ7jgZfjgb7jgZnjgIINCuOAgENvcHlyaWdodCBKQ0Ig
Q28uLCBMdGQuIDIwMTkNCu+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8
ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8ne+8
ne+8nQ0K44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA
44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CA44CAIEUxOTEwMTAyNDINCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
