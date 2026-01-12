Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 738A0D15CB2
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Jan 2026 00:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NsvYjKtQKeTTOqujQ+kJdvNLg3ED866n12Ompjo/lH0=; b=g82Ij9U8tuzIKUiLRKcHLX17Ur
	vD5zpnThLURRMRYx6dWxAxe9Jmp33R4xIeX7JEqd+PiWPonUT5CdE/96ZwPdLugWyjTsDJzALBvLO
	HtySZ6YrM7Esg15+09nM2jDIWkz/bFYe/qeCSLECnToU/EMlJtVdJNgHTzf/v8lIXWQA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vfRHb-0002Dq-8j;
	Mon, 12 Jan 2026 23:25:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M1061@s1.arrobamail.com>)
 id 1vfRHM-0002CE-Da for v9fs-developer@lists.sourceforge.net;
 Mon, 12 Jan 2026 23:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ed+KSMVg5I5RVvz7Kn6OdHo0Cu3b47IHLZ2hSbU6Dw=; b=cPImnN1+LIhY9ss0k5p5sk2Ulq
 SC+kAFlvf5sAC3R3sRLUCpabGGjugbA9/d54APmBm93hcru1fTnFbqVR4C/ao0toLypjpDY2kXQiF
 oIhHaSWiJ0Ykb9GokbQe/XO2ZqG7fZjiadQFw3xDTv6K5kzsYrlg/mWcRmZOx8Goklww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8ed+KSMVg5I5RVvz7Kn6OdHo0Cu3b47IHLZ2hSbU6Dw=; b=n
 D0Okt8QuFLYowVekjwF/exRpNK2mQbnTJa+7YYbih78j4rS+aBXRt8xO1S4U7GdSD+0SQvy5qfZ+w
 FRD0HFaHzSo2NAWwtkz/LDUBN2bljSJgFt9Fh1ZJSFHMwcyBIQE/84H2CyqQb+b2h29DMvLyCoHmG
 P3oMEwIrsvmwl8AM=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vfRHM-0007Ce-8H for v9fs-developer@lists.sourceforge.net;
 Mon, 12 Jan 2026 23:24:57 +0000
Date: Mon, 12 Jan 2026 17:24:44 -0600
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Luis_Rodr=C3=ADguez?= <luis.rodriguez@consultores-rh.com>
Message-ID: <67f366018072d09be89811e0a7385136@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA2MS0zMTk0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwNjE7MzE5NDsxMzM3NDU7MjY5
X-bhid: X-bhd: 1061;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 1061:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1768260284; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2012=20Jan=202026=2017:24:44=20-0600
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Luis_Rodr=3DC3=3DADguez?=3D=20<luis.rodriguez@consultore
 s-rh.com>
 |Reply-To:=3D?utf-8?Q?Luis_Rodr=3DC3=3DADguez?=3D=20<luis.rodriguez@consul
 tores-rh.com>
 |Subject:=3D?utf-8?Q?El_68%_de_l=3DC3=3DADderes_sobrestima_su_desempe=3DC3
 =3DB1o?=3D
 |Message-ID:<67f366018072d09be89811e0a7385136@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA2MS0zMTk
 0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwNjE7MzE5NDsxMz
 M3NDU7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptswquwseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:1061:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_9RlNtp08pR6jV9ABFF
 hllZgh2WDbjGZHV3WPZvDJCUc";
 bh=6l/ElmYw6g+8r6XCWNr60xGM7lbo7/EjRm+rIVO8llI=;
 b=HzMiS/43LAAsoHZlq3maNhENXGTHUMdGJMUDyDKeH5VxS7D624AExHM/9DknGQLbzzkQL8mzG
 Mc0AWMLQS00MlM6/UseaqT6sQArHgFp8wjnF+q/dJe37TPgIQPI4Lxdno8qnhO5En/mHNzeMG
 VkP/rLdTuI7DsD4BISC7NVIf0=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ¿Tus líderes realmente lideran bien? body { margin: 0;
   padding: 0; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:
    #333; background-color: #ffffff; } table { border-spacing: 0; w [...] 
 
 Content analysis details:   (2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1vfRHM-0007Ce-8H
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?El_68=25_de_l=C3=ADderes_sobrestima_su?=
 =?utf-8?q?_desempe=C3=B1o?=
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
Reply-To: =?utf-8?Q?Luis_Rodr=C3=ADguez?= <luis.rodriguez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCcK/VHVzIGzDrWRlcmVzIHJlYWxtZW50ZSBsaWRlcmFuIGJpZW4/Cglib2R5IHsKICAgICAg
bWFyZ2luOiAwOwogICAgICBwYWRkaW5nOiAwOwogICAgICBmb250LWZhbWlseTogQXJpYWwsIEhl
bHZldGljYSwgc2Fucy1zZXJpZjsKICAgICAgZm9udC1zaXplOiAxNHB4OwogICAgICBjb2xvcjog
IzMzMzsKICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZmZmZjsKICAgIH0KICAgIHRhYmxlIHsK
ICAgICAgYm9yZGVyLXNwYWNpbmc6IDA7CiAgICAgIHdpZHRoOiAxMDAlOwogICAgICBtYXgtd2lk
dGg6IDYwMHB4OwogICAgICBtYXJnaW46IGF1dG87CiAgICB9CiAgICB0ZCB7CiAgICAgIHBhZGRp
bmc6IDEycHggMjBweDsKICAgIH0KICAgIGEgewogICAgICBjb2xvcjogIzFhNzNlODsKICAgICAg
dGV4dC1kZWNvcmF0aW9uOiBub25lOwogICAgfQogICAgLmZvb3RlciB7CiAgICAgIGZvbnQtc2l6
ZTogMTJweDsKICAgICAgY29sb3I6ICM4ODg4ODg7CiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjsK
ICAgIH0KCQoKCkVsIDY4JSBkZSBsw61kZXJlcyBzb2JyZXN0aW1hIHN1IGRlc2VtcGXDsW8uIEV2
YWx1YWNpw7NuIDM2MMKwIHRlIGRhIGxhIHZlcmRhZC4KCgoKCQoJCQoJCQkKCQkJSG9sYSwmbmJz
cDtWOWZzLWRldmVsb3BlciwKCgkJCcK/U2Fiw61hcyBxdWUgZWwgNjglIGRlIGxvcyBsw61kZXJl
cyBzb2JyZXN0aW1hIHN1IHByb3BpbyBkZXNlbXBlw7FvPwoKCQkJRWwgcHJvYmxlbWEgZXMgc2lt
cGxlOiBzb2xvIHJlY2liZW4gZmVlZGJhY2sgZGUgc3UgamVmZSBpbm1lZGlhdG8uIFBlcm8sIMK/
cXXDqSBvcGluYW4gc3VzIHBhcmVzIHkgY29sYWJvcmFkb3Jlcz8gQWjDrSBlc3TDoSBsYSB2ZXJk
YWQuCgoJCQlDb24gRmVlZGJhY2sgMzYwwrAgZGUgVm9yZWNvbCBvYnRpZW5lcyB1bmEgdmlzacOz
biBjb21wbGV0YSBkZWwgbGlkZXJhemdvIGVuIHR1IGVtcHJlc2E6CgoJCQkKCQkJCUZlZWRiYWNr
IGFuw7NuaW1vIHkgaG9uZXN0byBkZSBqZWZlcywgcGFyZXMgeSBjb2xhYm9yYWRvcmVzCgkJCQlS
ZXBvcnRlcyB2aXN1YWxlcyBjbGFyb3MgY29uIGZvcnRhbGV6YXMgeSDDoXJlYXMgZGUgbWVqb3Jh
IGlkZW50aWZpY2FkYXMKCQkJCUNvbXBldGVuY2lhcyBwZXJzb25hbGl6YWJsZXMgc2Vnw7puIHR1
IGN1bHR1cmEgb3JnYW5pemFjaW9uYWwKCQkJCTEwMCUgZW4gbGEgbnViZSwgZsOhY2lsIGRlIGFw
bGljYXIgeSBjb25maWRlbmNpYWwKCQkJCgoJCQlSZXN1bHRhZG86IEzDrWRlcmVzIG3DoXMgY29u
c2NpZW50ZXMsIGVxdWlwb3MgbcOhcyBjb21wcm9tZXRpZG9zLCBtZWpvciBjbGltYSBsYWJvcmFs
LgoKCQkJwr9RdWllcmVzIHZlciBjw7NtbyBmdW5jaW9uYT8gUmVzcG9uZGUgZXN0ZSBjb3JyZW8g
eSBhZ2VuZGFtb3MgdW5hIGRlbW8gcGVyc29uYWxpemFkYSBncmF0dWl0YS4KCgkJCVNhbHVkb3Ms
CgoJCQktLS0tLS0tLS0tLS0tLQoKCQkJQXR0ZS46IEx1aXMgUm9kcsOtZ3VlegoKCQkJQ2l1ZGFk
IGRlIE3DqXhpY286ICg1NSkgNTAxOCAwNTY1CgoJCQlXaGF0c0FwcDogKzUyIDMzIDE2MDcgMjA4
OQoKCQkJU2kgbm8gZGVzZWFzIHJlY2liaXIgbcOhcyBjb3JyZW9zLCBoYXogY2xpYyBhcXXDrSBw
YXJhIGRhcnRlIGRlIGJhamEuCgkJCQoJCQoJCgoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVjY2km
b2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2JhbWFp
bC5jb20vdW5zdXNjcmliZS5waHA/aWQ9d3JyaXR5c3J3cHRzd3F1d3NldXAiPmNsaWNrIGFxdSZp
YWN1dGU7PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
