Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 139FE89EF96
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Apr 2024 12:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ruUs0-000665-AQ;
	Wed, 10 Apr 2024 10:07:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M80@s1.arrobamail.com>)
 id 1ruUrx-00065u-F1 for v9fs-developer@lists.sourceforge.net;
 Wed, 10 Apr 2024 10:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g67cnFlU+2CYqzm7RUNP5pQ5o43s4F4F1JDHWn/q63Q=; b=TMm+u/TdpQtN+42i3o2fkdwKJH
 vtsEpsDaJvq4fb84+TcPUCUNrzclOXWxD4IGuGvAQeIfl7d6NGvIqwbMv2neewqYNv+NvBhhoGA0f
 BysSohHBquN/lxEWg6LqHwh0G8EOaFkGPalJ1zKKIZqjtiLXwkuafOUXtK1TKV0DPNSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g67cnFlU+2CYqzm7RUNP5pQ5o43s4F4F1JDHWn/q63Q=; b=H
 3AEzAIUjCVc4srqnPJ/kWz5gyl/iTzNlZpR38Qrpn7Rov/0lI24gc7g5+8zO1oXIdaWj8c8moKhWg
 rjWO7G71NmrCadtE/dtLdjgBwwHYFXDsB7FP0Fz7SbKso/MzRZdw2RTrMrK69BCMppNx0NsPPVmne
 mW+both4rSGZTT/o=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruUrw-0004Sr-5B for v9fs-developer@lists.sourceforge.net;
 Wed, 10 Apr 2024 10:07:53 +0000
Date: Wed, 10 Apr 2024 05:07:40 -0500
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Daniel_Rodr=C3=ADguez?= <daniel.rodriguez@consultores-rh.com>
Message-ID: <CmpRyFU6hCA9hHRfjCYSTOl8AuPM5Lhx9nYr3Bbgwg@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODAtMzA3OS00MjQxNS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgwOzMwNzk7NDI0MTU7MjY5
X-bhid: X-bhd: 80;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 80:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1712743660; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Wed,=2010=20Apr=202024=2005:07:40=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@consul
 tores-rh.com>
 |Reply-To:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@co
 nsultores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DA1Mejora_tu_proceso_de_reclutamiento_y_selecc
 i=3DC3=3DB3n!?=3D
 |Message-ID:<CmpRyFU6hCA9hHRfjCYSTOl8AuPM5Lhx9nYr3Bbgwg@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtODAtMzA3OS0
 0MjQxNS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzgwOzMwNzk7NDI0MT
 U7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipsoqseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:80:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_CmpRyFU6hCA9hHRfjC
 YSTOl8AuPM5Lhx9nYr3Bbgwg";
 bh=g67cnFlU+2CYqzm7RUNP5pQ5o43s4F4F1JDHWn/q63Q=;
 b=N7vaB66z+DH7a2xE15Wvfxo9EPJW1M2iJoDbc6RIaLDdiW9cf9bu5RRymNThBnFo5FU+uZh7E
 lORj2/VBsKXZDir64H8LVNwV25dsdJ7oFOdVbIJ3KM0GvYqQktn80r2cE5+KoegfxSyldKHD7
 uuHvlNI5cQ8qFOKNrum8+rpYk=
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola. &nbsp; Sabía usted que, de acuerdo con la revista The
    Quarterly Journal of Economics en la actualidad se invierten 23 días en
   contratar a un candidato y según&nbsp;la encuesta de Bryant &amp; Stratton
    Col [...] 
 
 Content analysis details:   (-0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: arrobamail.com]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1ruUrw-0004Sr-5B
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=A1Mejora_tu_proceso_de_reclutamien?=
 =?utf-8?q?to_y_selecci=C3=B3n!?=
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
Reply-To: =?utf-8?Q?Daniel_Rodr=C3=ADguez?=
 <daniel.rodriguez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKSG9sYS4KCiZuYnNwOwoKU2Fiw61hIHVzdGVkIHF1ZSwgZGUgYWN1ZXJkbyBjb24g
bGEgcmV2aXN0YSBUaGUgUXVhcnRlcmx5IEpvdXJuYWwgb2YgRWNvbm9taWNzIGVuIGxhIGFjdHVh
bGlkYWQgc2UgaW52aWVydGVuIDIzIGTDrWFzIGVuIGNvbnRyYXRhciBhIHVuIGNhbmRpZGF0byB5
IHNlZ8O6biZuYnNwO2xhIGVuY3Vlc3RhIGRlIEJyeWFudCAmYW1wOyBTdHJhdHRvbiBDb2xsZWdl
IE9ubGluZSB5IFdha2VmaWVsZCBSZXNlYXJjaCBkZWwgMTAwJSBkZSBsYXMgY29udHJhdGFjaW9u
ZXMgc29sbyBlbCA0MCUgY3VtcGxlIGNvbiBsYXMgbmVjZXNpZGFkZXMgZGUgbGFzIHZhY2FudGVz
LgoKJm5ic3A7CgpFc3RvIHF1aWVyZSBkZWNpciBxdWUsIGFkZW3DoXMmbmJzcDtkZSBzZXIgbGVu
dG8gZWwgcHJvY2VzbyBkZSBzZWxlY2Npw7NuJm5ic3A7ZGUgcGVyc29uYWwsIGxhIG1heW9yw61h
IGRlIGxvcyBjYW5kaWRhdG9zIG5vIGN1YnJlbiBhbCAxMDAlIGxhcyBuZWNlc2lkYWRlcyBsYWJv
cmFsZXMKCiZuYnNwOwoKwr9JbnZpZXJ0ZSBtdWNobyB0aWVtcG8gZW4gY3VicmlyIHN1cyB2YWNh
bnRlcz8KCsK/U3VzIGNhbmRpZGF0b3Mgbm8gc2llbXByZSBzb24gbG9zIG1lam9yZXM/CgombmJz
cDsKCk11Y2hhcyBlbXByZXNhcyB5IG9yZ2FuaXphY2lvbmVzIHV0aWxpemFuIGEgUHNpY29TbWFy
dCBjb21vIGhlcnJhbWllbnRhIGRlIHJlY2x1dGFtaWVudG8geSBzZWxlY2Npw7NuLCB5YSBxdWUg
bGVzIGF5dWRhIGEgY29ub2NlciBhIGRldGFsbGUgbGFzIGNvbXBldGVuY2lhcyBkZSBzdXMgY2Fu
ZGlkYXRvcywgYXPDrSBjb21vIGFnaWxpemFyIGVsIHByb2Nlc28gZGUgcmVjbHV0YW1pZW50byB5
IHNlbGVjY2nDs24mbmJzcDtwb3IgbWVkaW8gZGUgcGVvcGxlIGFuYWx5dGljcywgaW50ZWxpZ2Vu
Y2lhIGFydGlmaWNpYWwsIHZhbGlkYWNpw7NuJm5ic3A7ZGUgaWRlbnRpZGFkLCBlbnRyZSBvdHJv
cyBtw6l0b2RvcyBxdWUgbGUgZGFyw6FuJm5ic3A7Y2xhcmlkYWQgeSBjZXJ0ZXphIGFsIG1vbWVu
dG8gZGUgbGEgdG9tYSBkZSBkZWNpc2lvbmVzCgombmJzcDsKClNpIGxlIGludGVyZXNhIG1lam9y
YXIgc3UgcHJvY2VzbyBkZSByZWNsdXRhbWllbnRvLCByZXNwb25kYSZuYnNwO2VzdGUgZW1haWwg
ZGFuZG8gY2xpYyBhcXXDrSBvIHB1ZWRlJm5ic3A7Y29udGFjdGFyIGNvbm1pZ28gZW4gbG9zIHNp
Z3VpZW50ZXMgbsO6bWVyb3MgdGVsZWbDs25pY29zLgoKJm5ic3A7CgoKCQoJCQoJCQkKCQkJRGFu
aWVsIFJvZHLDrWd1ZXoKCgkJCUxsw6FtYW5vcyZuYnNwO3NpbiBjb3N0bzogMDAgMSAoODgwKSAz
NTEgNzkyNAoKCQkJQ2l1ZGFkIGRlIE3DqXhpY286ICg1NSkgNTAxOCAwNTY1CgoJCQlDb2xvbWJp
YSwgQm9nb3TDoTogKDU3MSkgNTgwIDAzNTEKCgkJCVJlcMO6YmxpY2EgRG9taW5pY2FuYTogKDgy
OSkgOTU0IDgwNzcKCgkJCUd1YXRlbWFsYTogKDUwMikgMjMxNSA5ODM1CgoJCQlFbCBTYWx2YWRv
cjogKDUwMykgMjExMyA5NDIyCgoJCQlDaGlsZTogKDU2KSAyMjU4IDM1OTI5CgoJCQlXaGF0c0Fw
cDogKzUyIDMzIDE2MDcgMjA4OQoKCQkJJm5ic3A7CgkJCQoJCQkKCQkJCgkJCQoJCQoJCgoKJm5i
c3A7CgpDbGljIGFxdcOtJm5ic3A7cGFyYSBkYXJzZSBkZSBiYWphLgoKCgoKUGFyYSByZW1vdmVy
IHN1IGRpcmVjY2kmb2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8v
czEuYXJyb2JhbWFpbC5jb20vdW5zdXNjcmliZS5waHA/aWQ9dGV0d3lzcnFpcHNvcXNldXAiPmNs
aWNrIGFxdSZpYWN1dGU7PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
