Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 521D725690A
	for <lists+v9fs-developer@lfdr.de>; Sat, 29 Aug 2020 18:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J49xyzLtA9mEmldjwZtd1dlKk78nJCXuk8opBVWFzSQ=; b=Oo/JDu7RztN+1oVNTtHh92/G3x
	t/3+BVI0+s57qfuqAcBZ1tWbNmyCDeKYYaZ6fABP8FSEVZs4RGDwoGn/NuqO4nCTKvN5FrvlviKdO
	KVGXUVPRrHqk4CMG3MlFk38mL5EoWSq/vqX+sX9CImlNTdfqcaUDmAR9x6TL0bAdWuzs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kC3iG-0005N0-Gt; Sat, 29 Aug 2020 16:28:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ydo@amazon.co.jp>) id 1kC3iE-0005Mt-Nb
 for v9fs-developer@lists.sourceforge.net; Sat, 29 Aug 2020 16:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9t31LrkYL5u5eERJXIV42QnoRAm2VmLu+0RcG4asWwI=; b=Xq2GeUaEHgpqhP+o9M9IB+6NTH
 yLUZp30RnOcEa2wsals1HazFzBWx9psMyHcYW7asMMb6hPBEooKv4ZGihJgcahCjK/PNl8eL/8rJ+
 7izv03vkDKR1UFC2w1Br2qTAUMvFbrrJ5WIM13zgW6EqS6LUQ6g+fS2u72KPkhHLt+n4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9t31LrkYL5u5eERJXIV42QnoRAm2VmLu+0RcG4asWwI=; b=R
 8cHt9p1D48vNK34X+EKkb66GSaxjMyllJG1smJd24zh57uZETk/5Lomh6wNsQBzAULIdP1rSag6FS
 ehSV/IrVgAhDaKAB/peEndIQM2dxY5/WZ0Qzg1rdfGOObJPZr6tzMMrVGZAFTtWCU9r3bLgw3kLnq
 QJbYAT0RpeeglCP8=;
Received: from [98.126.214.79] (helo=amazon.co.jp)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kC3iD-006VuA-5j
 for v9fs-developer@lists.sourceforge.net; Sat, 29 Aug 2020 16:28:18 +0000
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sun, 30 Aug 2020 00:28:12 +0800
Message-ID: <00199c20db39$6ac90f41$cb420e50$@amazon.co.jp>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dayon.co.jp]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [98.126.214.79 listed in bl.mailspike.net]
 1.8 DKIM_ADSP_DISCARD      No valid author signature, domain signs all mail
 and suggests discarding the rest
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
 address
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 T_REMOTE_IMAGE         Message contains an external image
 1.4 DOS_OUTLOOK_TO_MX      Delivered direct to MX with Outlook headers
X-Headers-End: 1kC3iD-006VuA-5j
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9u44Ki44Kr44Km44Oz44OI44KS5Yip?=
	=?utf-8?b?55So5Yi26ZmQ44GX44Gm44GE44G+44GZ?=
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
From: amazon via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: amazon <ydo@amazon.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0K0JBtVGFsa2F6b24g44GK5a6i5qeYDQrQkG1QbGF5IHdpdGggbWVhem9uIOOB
q+eZu+mMsuOBhOOBn+OBoOOBhOOBn+OBiuWuouanmOOBq+OAgdCQbWFLaWNrem9uIOOCouOCq+OC
puODs+ODiOOBruaDheWgseabtOaWsOOCkuOBiuWxiuOBkeOBl+OBvuOBmeOAguaui+W/teOBquOB
jOOCieOAgdCQbUVhdCBGb29kYXpvbiDjga7jgqLjgqvjgqbjg7Pjg4jjgpLmm7TmlrDjgafjgY3j
gb7jgZvjgpPjgafjgZfjgZ/jgIINCuS7iuWbnuOBr+OAgeOCq+ODvOODieOBjOacn+mZkOWIh+OC
jOOBq+OBquOBo+OBpuOCi+OBi+OAgeiri+axguWFiOS9j+aJgOOBjOWkieabtOOBleOCjOOBn+OB
quOBqeOAgeOBleOBvuOBluOBvuOBqueQhueUseOBp+OCq+ODvOODieOBruaDheWgseOCkuabtOaW
sOOBp+OBjeOBvuOBm+OCk+OBp+OBl+OBn+OAgg0KDQrjgqLjgqvjgqbjg7Pjg4jmg4XloLHjga7k
uIDpg6jjgYzoqqTjgaPjgabjgYTjgovmlYXjgavjgIHjgYrlrqLmp5jjga7jgqLjgqvjgqbjg7Pj
g4jjgpLntq3mjIHjgZnjgovjgZ/jgoEg0JBtYUZseXpvbiDjgqLjgqvjgqbjg7Pjg4jjga4g5oOF
5aCx44KS56K66KqN44GZ44KL5b+F6KaB44GM44GC44KK44G+44GZ44CC5LiL44GL44KJ44Ki44Kr
44Km44Oz44OI44KS44Ot44Kw44Kk44Oz44GX44CB5oOF5aCx44KS5pu05paw44GX44Gm44GP44Gg
44GV44GE44CCDQrQkG1BaXIgTWF4IERheWF6b24g44Ot44Kw44Kk44OzIA0KDQrjgarjgYrjgIEy
NOaZgumWk+S7peWGheOBq+OBlOeiuuiqjeOBjOOBquOBhOWgtOWQiOOAgeiqoOOBq+eUs+OBl+io
s+OBlOOBluOBhOOBvuOBm+OCk+OAgeOBiuWuouanmOOBruWuieWFqOOBrueCuuOAgeOCouOCq+OC
puODs+ODiOOBruWIqeeUqOWItumZkOOCkuOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOBruOB
p+OAgeS6iOOCgeOBlOS6huaJv+OBj+OBoOOBleOBhOOAgg0K44Ki44Kr44Km44Oz44OI44Gr55m7
6Yyy44GuReODoeODvOODq+OCouODieODrOOCueOBq+OCouOCr+OCu+OCueOBp+OBjeOBquOBhOWg
tOWQiA0K44GK5ZWP44GE5ZCI44KP44Gb77yaIEFtRm9vZGF6UGxheW9u44Kr44K544K/44Oe44O8
44K144O844OT44K544CCDQrjgYrnn6XjgonjgZs6DQrjg5Hjgrnjg6/jg7zjg4njga/oqrDjgavj
goLmlZnjgYjjgarjgYTjgafjgY/jgaDjgZXjgYTjgIINCuWAi+S6uuaDheWgseOBqOmWouS/guOB
jOOBquOBj+OAgeaOqOa4rOOBl+OBq+OBj+OBhOODkeOCueODr+ODvOODieOCkuS9nOaIkOOBl+OB
puOBj+OBoOOBleOBhOOAguWkp+aWh+Wtl+OBqOWwj+aWh+Wtl+OAgeaVsOWtl+OAgeOBiuOCiOOB
s+iomOWPt+OCkuW/heOBmuS9v+eUqOOBl+OBpuOBj+OBoOOBleOBhOOAgg0K44Kq44Oz44Op44Kk
44Oz44Ki44Kr44Km44Oz44OI44GU44Go44Gr44CB55Ww44Gq44KL44OR44K544Ov44O844OJ44KS
5L2/55So44GX44Gm44GP44Gg44GV44GE44CCDQrjganjgYbjgZ7jgojjgo3jgZfjgY/jgYrpoZjj
gYTjgYTjgZ/jgZfjgb7jgZnjgIINCtCQbVdvbmRlcmZ1bCBEYXlhek5pY2UgRGF5b24uY28uanAN
Cg0KDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
