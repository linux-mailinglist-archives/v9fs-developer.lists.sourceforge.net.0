Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC74261509
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Sep 2020 18:42:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kFghr-0003t3-1z; Tue, 08 Sep 2020 16:42:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Amazon.co.jp@gjhdld.icu>) id 1kFgho-0003sQ-GP
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Sep 2020 16:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7HaG9ShoPuynIz2Sl27VTuKj4QYPNwc1+SD5oCobv+A=; b=Xo3gDiQmAU7qiGVtV2Qdp0vEJ6
 cvCNYUhOhQbkyTwp4fDM93ou7AjHO54fKE8QM3LbF1nK5rgLYsm+d3g17Btwsi9zaF+BWHCh7+6H6
 TpImD6IqSZJa7pZ5GTR27RDU321f3zAviX/hGB73dEXb165Z93018sw6Et92CBuE5lXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7HaG9ShoPuynIz2Sl27VTuKj4QYPNwc1+SD5oCobv+A=; b=Y
 BPFn6J+chMZkSgqIe1kHuiJf2w9jepp8Glkvw3It9HHBcbf5yti8cc09wqoykaMK8l9Ij+5lyP0B5
 S4toJQbQnj/qkl4atTN7l+IzmyOprG5SoGE0k3L/WmALrTj09bbF9Bbt0Qaz1xGhpax8nbFCVnviv
 QswpNU/gp9BKv7Tw=;
Received: from v160-251-11-80.6v79.static.cnode.io ([160.251.11.80]
 helo=mta0.gjhdld.icu) by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFghe-00H1N9-UC
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Sep 2020 16:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=gjhdld.icu; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=Amazon.co.jp@gjhdld.icu;
 bh=7HaG9ShoPuynIz2Sl27VTuKj4QYPNwc1+SD5oCobv+A=;
 b=MTuIT8pxIQYJUIkQgLhThRldXb0LYV6O4Lxs9Ym2TVeXb4c9z2tXOO6vwcDq5wngnenfvzPtV/Jd
 QqYrOc+ZBnirnWrcJQ9fA+hE12j68YKNdqAWH+rp8O93CRYShVrMKBUJohzCTQWMxQeta5skFcoX
 ZqA0Nb18g/hezHDdtsA=
Message-ID: <20200909004229202288@gjhdld.icu>
From: "Amazon.co.jp" <Amazon.co.jp@gjhdld.icu>
To: <v9fs-developer@lists.sourceforge.net>
Date: Wed, 9 Sep 2020 00:42:24 +0800
MIME-Version: 1.0
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 AMAZON_IMG_NOT_RCVD_AMZN Amazon hosted image but message not from
 Amazon
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
 1.7 NO_FM_NAME_IP_HOSTN    No From name + hostname using IP address
X-Headers-End: 1kFghe-00H1N9-UC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5Zue5aSN77yaIOOBguOBquOBn+OBruOCog==?=
	=?utf-8?b?44Kr44Km44Oz44OI44Gv5YGc5q2i44GV44KM44G+44GX44Gf?=
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

56K66KqN55So44Ki44Kr44Km44Oz44OIIA0KDQoNCg0KDQoNCuOBgiMjbWl4X25vcm1hbF8xMCMj
44GqIyNtaXhfbm9ybWFsXzEwIyPjgZ8jI21peF9ub3JtYWxfMTAjI+OBriMjbWl4X25vcm1hbF8x
MCMj44KiIyNtaXhfbm9ybWFsXzEwIyPjgqsjI21peF9ub3JtYWxfMTAjI+OCpiMjbWl4X25vcm1h
bF8xMCMj44OzIyNtaXhfbm9ybWFsXzEwIyPjg4gjI21peF9ub3JtYWxfMTAjI+OBryMjbWl4X25v
cm1hbF8xMCMj5YGcIyNtaXhfbm9ybWFsXzEwIyPmraIjI21peF9ub3JtYWxfMTAjI+OBlSMjbWl4
X25vcm1hbF8xMCMj44KMIyNtaXhfbm9ybWFsXzEwIyPjgb4jI21peF9ub3JtYWxfMTAjI+OBlyMj
bWl4X25vcm1hbF8xMCMj44GfDQoNCuOBk+OCk+OBq+OBoeOBryDjgIEgDQoNCuiqsCMjbWl4X25v
cm1hbF8xMCMj44GLIyNtaXhfbm9ybWFsXzEwIyPjgYwjI21peF9ub3JtYWxfMTAjI+OBgiMjbWl4
X25vcm1hbF8xMCMj44GqIyNtaXhfbm9ybWFsXzEwIyPjgZ8jI21peF9ub3JtYWxfMTAjI+OBrkEj
I21peF9ub3JtYWxfMTAjI21heiMjbWl4X25vcm1hbF8xMCMjb24jI21peF9ub3JtYWxfMTAjI+OC
oiMjbWl4X25vcm1hbF8xMCMj44KrIyNtaXhfbm9ybWFsXzEwIyPjgqYjI21peF9ub3JtYWxfMTAj
I+ODsyMjbWl4X25vcm1hbF8xMCMj44OIIyNtaXhfbm9ybWFsXzEwIyPjgacjI21peF9ub3JtYWxf
MTAjI+S7liMjbWl4X25vcm1hbF8xMCMj44GuIyNtaXhfbm9ybWFsXzEwIyPjg4cjI21peF9ub3Jt
YWxfMTAjI+ODkCMjbWl4X25vcm1hbF8xMCMj44KkIyNtaXhfbm9ybWFsXzEwIyPjgrkjI21peF9u
b3JtYWxfMTAjI+OBiyMjbWl4X25vcm1hbF8xMCMj44KJIyNtaXhfbm9ybWFsXzEwIyPos7wjI21p
eF9ub3JtYWxfMTAjI+WFpSMjbWl4X25vcm1hbF8xMCMj44GXIyNtaXhfbm9ybWFsXzEwIyPjgogj
I21peF9ub3JtYWxfMTAjI+OBhiMjbWl4X25vcm1hbF8xMCMj44GoIyNtaXhfbm9ybWFsXzEwIyPj
gZcjI21peF9ub3JtYWxfMTAjI+OBviMjbWl4X25vcm1hbF8xMCMj44GXIyNtaXhfbm9ybWFsXzEw
IyPjgZ/jgILjgZ0jI21peF9ub3JtYWxfMTAjI+OBhiMjbWl4X25vcm1hbF8xMCMj44GnIyNtaXhf
bm9ybWFsXzEwIyPjgaojI21peF9ub3JtYWxfMTAjI+OBkSMjbWl4X25vcm1hbF8xMCMj44KMIyNt
aXhfbm9ybWFsXzEwIyPjgbDjgIFBIyNtaXhfbm9ybWFsXzEwIyNtIyNtaXhfbm9ybWFsXzEwIyNh
eiMjbWl4X25vcm1hbF8xMCMjb24jI21peF9ub3JtYWxfMTAjI+OBriMjbWl4X25vcm1hbF8xMCMj
5L+dIyNtaXhfbm9ybWFsXzEwIyPorbcjI21peF9ub3JtYWxfMTAjI+OBqyMjbWl4X25vcm1hbF8x
MCMj44GKIyNtaXhfbm9ybWFsXzEwIyPjgZEjI21peF9ub3JtYWxfMTAjI+OCiyMjbWl4X25vcm1h
bF8xMCMj44K7IyNtaXhfbm9ybWFsXzEwIyPjgq0jI21peF9ub3JtYWxfMTAjI+ODpSMjbWl4X25v
cm1hbF8xMCMj44OqIyNtaXhfbm9ybWFsXzEwIyPjg4bjgqMjI21peF9ub3JtYWxfMTAjI+OBqCMj
bWl4X25vcm1hbF8xMCMj5pW0IyNtaXhfbm9ybWFsXzEwIyPlkIgjI21peF9ub3JtYWxfMTAjI+aA
pyMjbWl4X25vcm1hbF8xMCMj44GuIyNtaXhfbm9ybWFsXzEwIyPllY8jI21peF9ub3JtYWxfMTAj
I+mhjCMjbWl4X25vcm1hbF8xMCMj44GrIyNtaXhfbm9ybWFsXzEwIyPjgogjI21peF9ub3JtYWxf
MTAjI+OCiuOAgeOCuyMjbWl4X25vcm1hbF8xMCMj44KtIyNtaXhfbm9ybWFsXzEwIyPjg6UjI21p
eF9ub3JtYWxfMTAjI+ODqiMjbWl4X25vcm1hbF8xMCMj44OGIyNtaXhfbm9ybWFsXzEwIyPjgqMj
I21peF9ub3JtYWxfMTAjI+S4iiMjbWl4X25vcm1hbF8xMCMj44GuIyNtaXhfbm9ybWFsXzEwIyPn
kIYjI21peF9ub3JtYWxfMTAjI+eUsSMjbWl4X25vcm1hbF8xMCMj44GLIyNtaXhfbm9ybWFsXzEw
IyPjgokjI21peF9ub3JtYWxfMTAjI+OCoiMjbWl4X25vcm1hbF8xMCMj44KrIyNtaXhfbm9ybWFs
XzEwIyPjgqYjI21peF9ub3JtYWxfMTAjI+ODsyMjbWl4X25vcm1hbF8xMCMj44OIIyNtaXhfbm9y
bWFsXzEwIyPjgYwjI21peF9ub3JtYWxfMTAjI+ODrSMjbWl4X25vcm1hbF8xMCMj44ODIyNtaXhf
bm9ybWFsXzEwIyPjgq8jI21peF9ub3JtYWxfMTAjI+OBlSMjbWl4X25vcm1hbF8xMCMj44KMIyNt
aXhfbm9ybWFsXzEwIyPjgb4jI21peF9ub3JtYWxfMTAjI+OBmeOAgg0KDQrjgqIjI21peF9ub3Jt
YWxfMTAjI+OCqyMjbWl4X25vcm1hbF8xMCMj44KmIyNtaXhfbm9ybWFsXzEwIyPjg7MjI21peF9u
b3JtYWxfMTAjI+ODiCMjbWl4X25vcm1hbF8xMCMj44KSIyNtaXhfbm9ybWFsXzEwIyPlvJUjI21p
eF9ub3JtYWxfMTAjI+OBjSMjbWl4X25vcm1hbF8xMCMj57aaIyNtaXhfbm9ybWFsXzEwIyPjgY0j
I21peF9ub3JtYWxfMTAjI+S9vyMjbWl4X25vcm1hbF8xMCMj55SoIyNtaXhfbm9ybWFsXzEwIyPj
gZkjI21peF9ub3JtYWxfMTAjI+OCiyMjbWl4X25vcm1hbF8xMCMj44GrIyNtaXhfbm9ybWFsXzEw
IyPjga/jgIEyIyNtaXhfbm9ybWFsXzEwIyM0IyNtaXhfbm9ybWFsXzEwIyPmmYIjI21peF9ub3Jt
YWxfMTAjI+mWkyMjbWl4X25vcm1hbF8xMCMj5YmNIyNtaXhfbm9ybWFsXzEwIyPjgavmg4UjI21p
eF9ub3JtYWxfMTAjI+WgsSMjbWl4X25vcm1hbF8xMCMj44KSIyNtaXhfbm9ybWFsXzEwIyPmm7Qj
I21peF9ub3JtYWxfMTAjI+aWsCMjbWl4X25vcm1hbF8xMCMj44GZIyNtaXhfbm9ybWFsXzEwIyPj
gosjI21peF9ub3JtYWxfMTAjI+OBkyMjbWl4X25vcm1hbF8xMCMj44GoIyNtaXhfbm9ybWFsXzEw
IyPjgpIjI21peF9ub3JtYWxfMTAjI+OBiiMjbWl4X25vcm1hbF8xMCMj5YunIyNtaXhfbm9ybWFs
XzEwIyPjgoEjI21peF9ub3JtYWxfMTAjI+OBlyMjbWl4X25vcm1hbF8xMCMj44G+IyNtaXhfbm9y
bWFsXzEwIyPjgZkjI21peF9ub3JtYWxfMTAjI+OAgiDjgZ0jI21peF9ub3JtYWxfMTAjI+OCjCMj
bWl4X25vcm1hbF8xMCMj5LulIyNtaXhfbm9ybWFsXzEwIyPlpJYjI21peF9ub3JtYWxfMTAjI+OB
riMjbWl4X25vcm1hbF8xMCMj5aC0IyNtaXhfbm9ybWFsXzEwIyPlkIjjgIHjgYIjI21peF9ub3Jt
YWxfMTAjI+OBqiMjbWl4X25vcm1hbF8xMCMj44GfIyNtaXhfbm9ybWFsXzEwIyPjga4jI21peF9u
b3JtYWxfMTAjI+OCoiMjbWl4X25vcm1hbF8xMCMj44KrIyNtaXhfbm9ybWFsXzEwIyPjgqYjI21p
eF9ub3JtYWxfMTAjI+ODsyMjbWl4X25vcm1hbF8xMCMj44OIIyNtaXhfbm9ybWFsXzEwIyPjga8g
5rC4IyNtaXhfbm9ybWFsXzEwIyPkuYUjI21peF9ub3JtYWxfMTAjI+ODrSMjbWl4X25vcm1hbF8x
MCMj44ODIyNtaXhfbm9ybWFsXzEwIyPjgq8jI21peF9ub3JtYWxfMTAjIy4gDQoNCueiuuiqjeeU
qOOCouOCq+OCpuODs+ODiCANCg0KDQoNCuWunOOBl+OBj+OBiumhmOOBhOOBl+OBvuOBmQ0KDQpB
bWF6b24gUHJvdGVjdGlvbg0KDQoNCg0KDQpDb3B5cmlnaHQgQCAyMDE5IEFtYXpvbiBJbmMuIDEg
SW5maW5pdGUgTG9vcOOAgeOCr+ODkeODgeODvOODjuOAgUNBIDk1MDE044CBQWxsIFJpZ2h0cyBS
ZXNlcnZlZOOAgg0KDQoNCg0KDQoNCg0KDQoNCg0KICAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
