Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C6D3883E
	for <lists+v9fs-developer@lfdr.de>; Fri, 16 Jan 2026 22:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ql0s6H+RqvKk2mB1LmsnPKfuuxk5m+Drevqfuozue/k=; b=gtGYDu2JWPQ3qXLB/RMZOVXHHM
	LMmYARvx7igQDt965mpCPHYsIX2lOcXgp9o1YhFuw84TIgsBcxuSwThu7YWxuXnrbC1oBbY8EBdED
	zDueaJpVhoUJtETzU4ZRQTtFgzkmgPkSiecsG1Lb/pXlPFdfazMFIZ5gyvv4z3mvi26I=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vgrFY-0002Yf-Nt;
	Fri, 16 Jan 2026 21:20:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M1069@s1.arrobamail.com>)
 id 1vgrFX-0002YZ-NY for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Jan 2026 21:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mpqDMn77qYZpJyJxhmkatyedIuvttbkRXRw7XO4qYIk=; b=F0LXfTdCE1MLHmq+WaSSP5jHk1
 bOm9GYh81sGPEjCTk145+ZK/P8+FBKD1wz6r5n71VOGWrmnlOZ0LCswHUmDggb3sDYAhjH5nxW8WY
 kaO2TJUl0B4IbAd8dGRf89E77ph42a98UDu9cOBq2+5cpu5Ktz5AbPXyoezzosVZjq3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mpqDMn77qYZpJyJxhmkatyedIuvttbkRXRw7XO4qYIk=; b=m
 /UTsoXtM/bBHu0O5EmTjYn9CVJCkNt3urcChrFLl6ekTphZ0lJT5uZJyVY6Tdx7AAL5VMjzKzwcq7
 iFSyA/r0P5GELhHcH9v1yxcb24ji76MBBbTBGaR9fSEOnXjJ3J1gTev3dntPY1vZKW+uCbZjFlGGT
 hKRVn7lxKh7JOo/g=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vgrFX-0005Qg-IH for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Jan 2026 21:20:56 +0000
Date: Fri, 16 Jan 2026 15:20:48 -0600
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Message-ID: <f2cc4d60473ed65e371a84dc045c1ebc@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA2OS0zMTk0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwNjk7MzE5NDsxMzM3NDU7MjY5
X-bhid: X-bhd: 1069;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 1069:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1768598448; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Fri,=2016=20Jan=202026=2015:20:48=20-0600
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consultores-
 rh.com>
 |Reply-To:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consulto
 res-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DBFCu=3DC3=3DA1nto_cuesta_una_mala_contrataci=
 3DC3=3DB3n=3D3F?=3D
 |Message-ID:<f2cc4d60473ed65e371a84dc045c1ebc@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA2OS0zMTk
 0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwNjk7MzE5NDsxMz
 M3NDU7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptswqupseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:1069:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_dGZXvzBtg5z4FJ28td
 FFaQNIbcMRJxI4g68TUNv0z8";
 bh=KBSp7KGyTklh4thObmWwSENSOSHDyZFznp3W9vzscEI=;
 b=evAgPS2LO61oScKHaWo6jCAuBIVpNDq+rFYulc6B6sxeNpvPaLtEgOoIca3/KmxH/5WOdfrh0
 PCCvS/dSua3apWMd3NcGQPlhjNdJSTUlYsUIUu+dTZB+sWBsv7IuZhxwA+HMyoddvs4YRERd0
 RGY85Uzo5dfcv+QuWyC6JdNDg=
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ¿Cuánto cuesta una mala contratación? body { margin: 0;
    padding: 0; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:
    #333; background-color: #ffffff; } table { border-spacing: 0; [...] 
 
 Content analysis details:   (3.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
                             [190.105.144.156 listed in dnsbl-2.uceprotect.net]
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1vgrFX-0005Qg-IH
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=BFCu=C3=A1nto_cuesta_una_mala_cont?=
 =?utf-8?q?rataci=C3=B3n=3F?=
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
Reply-To: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCcK/Q3XDoW50byBjdWVzdGEgdW5hIG1hbGEgY29udHJhdGFjacOzbj8KCWJvZHkgewogICAg
ICBtYXJnaW46IDA7CiAgICAgIHBhZGRpbmc6IDA7CiAgICAgIGZvbnQtZmFtaWx5OiBBcmlhbCwg
SGVsdmV0aWNhLCBzYW5zLXNlcmlmOwogICAgICBmb250LXNpemU6IDE0cHg7CiAgICAgIGNvbG9y
OiAjMzMzOwogICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmZmZmOwogICAgfQogICAgdGFibGUg
ewogICAgICBib3JkZXItc3BhY2luZzogMDsKICAgICAgd2lkdGg6IDEwMCU7CiAgICAgIG1heC13
aWR0aDogNjAwcHg7CiAgICAgIG1hcmdpbjogYXV0bzsKICAgIH0KICAgIHRkIHsKICAgICAgcGFk
ZGluZzogMTJweCAyMHB4OwogICAgfQogICAgYSB7CiAgICAgIGNvbG9yOiAjMWE3M2U4OwogICAg
ICB0ZXh0LWRlY29yYXRpb246IG5vbmU7CiAgICB9CiAgICAuZm9vdGVyIHsKICAgICAgZm9udC1z
aXplOiAxMnB4OwogICAgICBjb2xvcjogIzg4ODg4ODsKICAgICAgdGV4dC1hbGlnbjogY2VudGVy
OwogICAgfQoJCgoKVW5hIG1hbGEgY29udHJhdGFjacOzbiBjdWVzdGEgM1ggZWwgc2FsYXJpby4g
RXbDrXRhbG8gY29uIGRhdG9zLCBubyBwZXJjZXBjaW9uZXMuCgoKCgkKCQkKCQkJCgkJCUhvbGEs
Jm5ic3A7Vjlmcy1kZXZlbG9wZXIsCgoJCQnCv1NhYsOtYXMgcXVlIHVuYSBtYWxhIGNvbnRyYXRh
Y2nDs24gY3Vlc3RhIGhhc3RhIDMgdmVjZXMgZWwgc2FsYXJpbyBhbnVhbD8KCgkJCUVsIDc0JSBk
ZSBlbXByZXNhcyBhZG1pdGUgaGFiZXIgY29udHJhdGFkbyBhIGxhIHBlcnNvbmEgZXF1aXZvY2Fk
YS4gRWwgbW90aXZvOiBkZWNpc2lvbmVzIGJhc2FkYXMgZW4gcGVyY2VwY2lvbmVzLCBubyBlbiBk
YXRvcyBvYmpldGl2b3MuCgoJCQlQc2ljb1NtYXJ0IHRlIGF5dWRhIGEgZXZhbHVhciB0YWxlbnRv
IGNvbiBwcmVjaXNpw7NuOgoKCQkJCgkJCQkzMSBwcnVlYmFzIHBzaWNvbcOpdHJpY2FzIHZhbGlk
YWRhcyBwYXJhIG1lZGlyIGxpZGVyYXpnbywgaG9uZXN0aWRhZCBlIGludGVsaWdlbmNpYQoJCQkJ
Miw1MDArIGV4w6FtZW5lcyB0w6ljbmljb3MgZXNwZWNpYWxpemFkb3MgcG9yIGluZHVzdHJpYQoJ
CQkJVmVyaWZpY2FjacOzbiBkZSBpZGVudGlkYWQgY29uIGNhcHR1cmEgZm90b2dyw6FmaWNhIGF1
dG9tw6F0aWNhCgkJCQlSZXN1bHRhZG9zIGVuIG1pbnV0b3MsIGFjY2VzaWJsZSBkZXNkZSBjdWFs
cXVpZXIgZGlzcG9zaXRpdm8KCQkJCgoJCQlSZWR1Y2UgaGFzdGEgNjAlIGVsIHJpZXNnbyBkZSBl
cnJvciBlbiBzZWxlY2Npw7NuLgoKCQkJwr9RdWllcmVzIHVuYSBkZW1vc3RyYWNpw7NuIGdyYXR1
aXRhPyBSZXNwb25kZSBlc3RlIGNvcnJlbyB5IHRlIGNvbnRhY3RvIGVuIG1lbm9zIGRlIDI0IGhv
cmFzLgoKCQkJU2FsdWRvcywKCgkJCS0tLS0tLS0tLS0tLS0tCgoJCQlBdHRlLjogVmFsZXJpYSBQ
w6lyZXoKCgkJCUNpdWRhZCBkZSBNw6l4aWNvOiAoNTUpIDUwMTggMDU2NQoKCQkJV2hhdHNBcHA6
ICs1MiAzMyAxNjA3IDIwODkKCgkJCVNpIG5vIGRlc2VhcyByZWNpYmlyIG3DoXMgY29ycmVvcywg
aGF6IGNsaWMgYXF1w60gcGFyYSBkYXJ0ZSBkZSBiYWphLgoJCQkKCQkKCQoKCgoKClBhcmEgcmVt
b3ZlciBzdSBkaXJlY2NpJm9hY3V0ZTtuIGRlIGVzdGEgbGlzdGEgaGFnYSA8YSBocmVmPSJodHRw
czovL3MxLmFycm9iYW1haWwuY29tL3Vuc3VzY3JpYmUucGhwP2lkPXdycml0eXNyd3B0c3dxdXBz
ZXVwIj5jbGljayBhcXUmaWFjdXRlOzwvYT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
