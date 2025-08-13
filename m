Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 005C5B23E19
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Aug 2025 04:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wSB18kLwjazWXmV7J9f/2PrzxWoB0keeP/mqACP7sRI=; b=Vp96uU8C3MeA6BVZ0IT6kuqMj+
	cQ3fQ+oZjexsUCo/SiffPSsIpa2xDt2SE9HfI/YgfNSR4yUtrjNb5j3YOu/pJV03bfKvMLaphlcNr
	hWtZQJekNyEfipEJ3KpEEk5jG85G/gA1cKd8deYzRmtiaio/85nFNsw2mQE1MQyXfmqY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1um10M-0008Ap-RG;
	Wed, 13 Aug 2025 02:14:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M921@s1.arrobamail.com>)
 id 1um10K-0008Ah-GP for v9fs-developer@lists.sourceforge.net;
 Wed, 13 Aug 2025 02:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1yViGA+XAILpVaPYfB4CXxKH3xCASX+12FGjHATN7G8=; b=mwYd+WDrYGESoZ3es8bvgWXW2z
 5U6xZJjxIDTv52q6z+heJKvkLboDcrLLuGDANWMv/l0gYBINI+MgpXBN6h9k5qOI2GJpKP2LFGn6T
 WTyyqzRcoqOSXLOQkjvAInn05fw78n9L4DWrAMwtiQZCBkWMtklqd1CWWEDTOdmtq/9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1yViGA+XAILpVaPYfB4CXxKH3xCASX+12FGjHATN7G8=; b=N
 Cj5r8I5oDxlYSwFFQF4h76wByZK3PYJLYjnG9Ncid6QAbeTORWvKDvVvL/XMgJVi3FXID3L3BcEpy
 L1Oh2vh4dbNL/PtBwKchWAOQM3Y7UsyBRUUcsHqjzY2gORki/Pp+KR0sHrI6ZYM+Vl6XjXLzubkLr
 B0efV8QLPI6diCh0=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1um10J-00076i-Jr for v9fs-developer@lists.sourceforge.net;
 Wed, 13 Aug 2025 02:14:16 +0000
Date: Tue, 12 Aug 2025 21:14:03 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Luis_Ram=C3=ADrez?= <luis.ramirez@consultores-rh.com>
Message-ID: <tzI36vsuanFAkbnx6UdmObzCsG1264pjgFR6PRCI7uk@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTIxLTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkyMTszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 921;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 921:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1755051243; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Tue,=2012=20Aug=202025=2021:14:03=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Luis_Ram=3DC3=3DADrez?=3D=20<luis.ramirez@consultores-rh
 .com>
 |Reply-To:=3D?utf-8?Q?Luis_Ram=3DC3=3DADrez?=3D=20<luis.ramirez@consultore
 s-rh.com>
 |Subject:=3D?utf-8?Q?Gestiona_el_desempe=3DC3=3DB1o_con_objetivos_claros_y
 _medibles?=3D
 |Message-ID:<tzI36vsuanFAkbnx6UdmObzCsG1264pjgFR6PRCI7uk@s1.arrobamail.com
 > |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTIxLTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkyMTszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptspewseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:921:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_tzI36vsuanFAkbnx6U
 dmObzCsG1264pjgFR6PRCI7uk";
 bh=BVuAy+p/1h+XL4IeeIUikmzmT/uqzYSS0rIpUguRJxY=;
 b=CrFzA4AIxii+PC7ODgua/V4xKXD5qhhXPNRhAle2zcVj6m9dGkZ69egE9GW3kBTvhw/ODYBEr
 1awIE0dmlEJG4/X4mx5ZmkpkBEExm3wSGus8dym5kFFPBWLJdrd83FJ8JlsomXy6eORtSdLVA
 Yq6P7IE3/7uzlHGmuJduEzMkI=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Gestiona el desempeño con Vorecol body { margin: 0; padding:
    0; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #333;
    background-color: #ffffff; } table { border-spacing: 0; width [...] 
 
 Content analysis details:   (2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1um10J-00076i-Jr
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Gestiona_el_desempe=C3=B1o_con_objetiv?=
 =?utf-8?q?os_claros_y_medibles?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: =?utf-8?Q?Luis_Ram=C3=ADrez?= <luis.ramirez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCUdlc3Rpb25hIGVsIGRlc2VtcGXDsW8gY29uIFZvcmVjb2wKCWJvZHkgewogICAgICBtYXJn
aW46IDA7CiAgICAgIHBhZGRpbmc6IDA7CiAgICAgIGZvbnQtZmFtaWx5OiBBcmlhbCwgSGVsdmV0
aWNhLCBzYW5zLXNlcmlmOwogICAgICBmb250LXNpemU6IDE0cHg7CiAgICAgIGNvbG9yOiAjMzMz
OwogICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmZmZmOwogICAgfQogICAgdGFibGUgewogICAg
ICBib3JkZXItc3BhY2luZzogMDsKICAgICAgd2lkdGg6IDEwMCU7CiAgICAgIG1heC13aWR0aDog
NjAwcHg7CiAgICAgIG1hcmdpbjogYXV0bzsKICAgIH0KICAgIHRkIHsKICAgICAgcGFkZGluZzog
MTJweCAyMHB4OwogICAgfQogICAgYSB7CiAgICAgIGNvbG9yOiAjMWE3M2U4OwogICAgICB0ZXh0
LWRlY29yYXRpb246IG5vbmU7CiAgICB9CiAgICAuZm9vdGVyIHsKICAgICAgZm9udC1zaXplOiAx
MnB4OwogICAgICBjb2xvcjogIzg4ODg4ODsKICAgICAgdGV4dC1hbGlnbjogY2VudGVyOwogICAg
fQoJCgoKTWVqb3JhIGxhIGdlc3Rpw7NuIGRlbCBkZXNlbXBlw7FvIHkgdGFsZW50byBjb24gVm9y
ZWNvbCBQZXJmb3JtYW5jZSBNYW5hZ2VtZW50LgoKCgoJCgkJCgkJCQoJCQlIb2xhJm5ic3A7Vjlm
cy1kZXZlbG9wZXIsCgoJCQlHZXN0aW9uYXIgZWwgZGVzZW1wZcOxbyBkZSB0dSBlcXVpcG8gcHVl
ZGUgc2VyIG3DoXMgc2VuY2lsbG8geSBlZmVjdGl2byBjb24gbGFzIGhlcnJhbWllbnRhcyBhZGVj
dWFkYXMuIFNpbiB1biBidWVuIHNpc3RlbWEsIGVzIGRpZsOtY2lsIGlkZW50aWZpY2FyLCBkZXNh
cnJvbGxhciB5IHJldGVuZXIgYSBsb3MgbWVqb3JlcyBjb2xhYm9yYWRvcmVzLgoKCQkJRWwgbcOz
ZHVsbyBkZSBQZXJmb3JtYW5jZSBNYW5hZ2VtZW50IGRlIFZvcmVjb2wgdGUgb2ZyZWNlIHVuYSBz
b2x1Y2nDs24gY29tcGxldGEgcGFyYSBtZWRpciB5IHBvdGVuY2lhciBlbCB0YWxlbnRvIGVuIHR1
IG9yZ2FuaXphY2nDs24uCgoJCQlDb24gZXN0ZSBtw7NkdWxvIHB1ZWRlczoKCgkJCQoJCQkJRXZh
bHVhciBlbCBkZXNlbXBlw7FvIHkgcG90ZW5jaWFsIGRlIHR1cyBjb2xhYm9yYWRvcmVzIGNvbiBs
YSBtYXRyaXogTmluZSBCb3ggcGFyYSB0b21hciBtZWpvcmVzIGRlY2lzaW9uZXMuCgkJCQlFc3Rh
YmxlY2VyIHkgc2VndWlyIG9iamV0aXZvcyBjbGFyb3MgdXNhbmRvIGxhIG1ldG9kb2xvZ8OtYSBT
TUFSVCwgYWxpbmVhZG9zIGNvbiBsYXMgcHJpb3JpZGFkZXMgZGUgdHUgZW1wcmVzYS4KCQkJCUFq
dXN0YXIgZWwgc2lzdGVtYSBzZWfDum4gbG8gcXVlIG5lY2VzaXRlcywgZGVzZGUgbWFuZWphciBs
b3MgcGVyaW9kb3MgaGFzdGEgcmVjaWJpciBub3RpZmljYWNpb25lcywgdG9kbyBmw6FjaWwgZGUg
dXNhci4KCQkJCgoJCQlBZGVtw6FzLCBjb250YXLDoXMgY29uIHNvcG9ydGUgdMOpY25pY28geSBj
YXBhY2l0YWNpw7NuIGVzcGVjaWFsaXphZGEgcGFyYSByZXNvbHZlciBjdWFscXVpZXIgZHVkYSB5
IGFwcm92ZWNoYXIgYWwgbcOheGltbyBsYSBoZXJyYW1pZW50YS4KCgkJCVNpIHF1aWVyZXMgY29u
b2NlciBjw7NtbyBtZWpvcmFyIGxhIGdlc3Rpw7NuIGRlbCBkZXNlbXBlw7FvIGVuIHR1IGVxdWlw
bywgcmVzcG9uZGUgZXN0ZSBjb3JyZW8gbyBjb250w6FjdGFtZSBkaXJlY3RhbWVudGUuCgoJCQlT
YWx1ZG9zLAoKCQkJLS0tLS0tLS0tLS0tLS0KCgkJCUF0dGUuOiBMdWlzIFJhbcOtcmV6CgoJCQlD
aXVkYWQgZGUgTcOpeGljbzogKDU1KSA1MDE4IDA1NjUKCgkJCVdoYXRzQXBwOiArNTIgMzMgMTYw
NyAyMDg5CgoJCQlTaSBubyBkZXNlYXMgcmVjaWJpciBtw6FzIGNvcnJlb3MsIGhheiBjbGljIGFx
dcOtIHBhcmEgZGFydGUgZGUgYmFqYS4KCQkJCgkJCgkKCgoKCgpQYXJhIHJlbW92ZXIgc3UgZGly
ZWNjaSZvYWN1dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9zMS5hcnJv
YmFtYWlsLmNvbS91bnN1c2NyaWJlLnBocD9pZD13cnJpdHlzcndwdHNwZXdzZXVwIj5jbGljayBh
cXUmaWFjdXRlOzwvYT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
