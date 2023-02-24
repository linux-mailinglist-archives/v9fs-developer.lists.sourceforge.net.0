Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4146A15B0
	for <lists+v9fs-developer@lfdr.de>; Fri, 24 Feb 2023 04:57:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pVPDO-0003PT-5b;
	Fri, 24 Feb 2023 03:57:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <isqcysrq@service.metatie.xyz>) id 1pVPDN-0003PN-4E
 for v9fs-developer@lists.sourceforge.net;
 Fri, 24 Feb 2023 03:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l7zzWa7V1xmGFddrrkLxtcEuFpXu7RkT77LwZOL/5hw=; b=fAJHx710E+F0VtYuZ5tJARNvl4
 L7Cp0GJrWbbUrbywlRuXXkBCV+Bxb23zMUxGrYleoeXr9fPy+v8E7RQ90A7zU4O7AWwY1fA0t8ZTb
 e8MkUaSLOCh2g2AQo5BnAY5LFQ0OcFCXyPvcsjUdlVC73olY2k2F2vrcYj0NqpeXtukc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l7zzWa7V1xmGFddrrkLxtcEuFpXu7RkT77LwZOL/5hw=; b=V
 WmPQcH7SWwocXbuL9VJ0orjwbOcBE3JqN/NuMhniLk4mQCpwsXg1HXiwV4Gpkhvt4n4uu5n+ks78o
 l3X95uvLaipmiV0TpLOuhQ9tNTO9StWcohMUIOxTF2HWoVAYdO2oY7SbO8jODmFQ5iM7vGhX0yLPG
 WcdfR0UN9cVYne10=;
Received: from [109.205.56.72] (helo=service.metatie.xyz)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pVPDM-00FDCf-FM for v9fs-developer@lists.sourceforge.net;
 Fri, 24 Feb 2023 03:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mykey;
 d=service.metatie.xyz; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 bh=FCBWAlENvsjQeRdkYiHasr4WgQo=;
 b=kPU02hEiHxPywtth6+7wLEglut8AtCJe8A+oq6THq5QVJOV/loCIw4VKujVPrdULRYJxNbmc79BA
 9xH7WZRUHCZPBq8D7CKqVU0+1OnHxLqxm7GC21IYiajO1/bLZn/Q/AB87SLRS+TKAnw14ZBVGeG+
 Vk8BCjrohQdc9qricnM=
Received: from view (107.173.113.179) by service.metatie.xyz id hv0qrg0001ge
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 24 Feb 2023 03:36:59 +0000 (envelope-from <isqcysrq@service.metatie.xyz>)
Message-ID: <FAFC987F783BA98D9BE3F01E27F6A568@view>
From: Amazon <isqcysrq@service.metatie.xyz>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 24 Feb 2023 12:36:51 +0900
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Supmailer 38.1.0
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  v9fs-developer@lists.sourceforge.net 誰かがあなたのアカウントデータにアクセスしようとしています。
    日時: 2023/2/24/12:36:55Japan Standard Time 
 
 Content analysis details:   (2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: s.id]
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?109.205.56.72>]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: s.id]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_IMAGE_RATIO_06    BODY: HTML has a low ratio of text to image
                             area
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 AMAZON_IMG_NOT_RCVD_AMZN Amazon hosted image but message not
                             from Amazon
X-Headers-End: 1pVPDM-00FDCf-FM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?YW1hem9uOiDjgqLjgq/jgrfjg6fjg7PjgYw=?=
	=?utf-8?b?5b+F6KaB44Gn44GZOiDjgqLjgqvjgqbjg7Pjg4jjg4fjg7zjgr/jgqI=?=
	=?utf-8?b?44Kv44K744K544Gu6Kmm6KGMNTc5NzU=?=
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

CiAKCgp2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKCuiqsOOBi+OBjOOBguOB
quOBn+OBruOCouOCq+OCpuODs+ODiOODh+ODvOOCv+OBq+OCouOCr+OCu+OCueOBl+OCiOOBhuOB
qOOBl+OBpuOBhOOBvuOBmeOAggoKCuaXpeaZgjogICAgICAgICAgICAgICAgIDIwMjMvMi8yNC8x
MjozNjo1NUphcGFuIFN0YW5kYXJkIFRpbWUKCgrjg4fjg5DjgqTjgrk6ICAgICAgICAgICBhbWF6
b24gU2hvcHBpbmcgQXBwIGZvciBpT1MKCuS7mOi/kTogICAgICAgICAgICAgICAgICAxMTQuNC4y
MzAuMjI2CgoK5om/6KqN44G+44Gf44Gv5ZCm6KqN44GX44Gm44GP44Gg44GV44GEIAoKCgoK44Ki
44Kr44Km44Oz44OI44Gr55m76Yyy44GuReODoeODvOODq+OCouODieODrOOCueOBq+OCouOCr+OC
u+OCueOBp+OBjeOBquOBhOWgtOWQiAoK44GK5ZWP44GE5ZCI44KP44Gb77yaIEFtYXpvbuOCq+OC
ueOCv+ODnuODvOOCteODvOODk+OCueOAggoK44GK55+l44KJ44GbOgrjg5Hjgrnjg6/jg7zjg4nj
ga/oqrDjgavjgoLmlZnjgYjjgarjgYTjgafjgY/jgaDjgZXjgYTjgIIg5YCL5Lq65oOF5aCx44Go
6Zai5L+C44GM44Gq44GP44CB5o6o5ris44GX44Gr44GP44GE44OR44K544Ov44O844OJ44KS5L2c
5oiQ44GX44Gm44GP44Gg44GV44GE44CC5aSn5paH5a2X44Go5bCP5paH5a2X44CB5pWw5a2X44CB
44GK44KI44Gz6KiY5Y+344KS5b+F44Ga5L2/55So44GX44Gm44GP44Gg44GV44GE44CCIOOCquOD
s+ODqeOCpOODs+OCouOCq+OCpuODs+ODiOOBlOOBqOOBq+OAgeeVsOOBquOCi+ODkeOCueODr+OD
vOODieOCkuS9v+eUqOOBl+OBpuOBj+OBoOOBleOBhOOAgiAgLS0+IC0tPgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
