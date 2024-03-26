Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E4188C254
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Mar 2024 13:38:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rp646-0007C3-BO;
	Tue, 26 Mar 2024 12:38:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M51@s1.arrobamail.com>)
 id 1rp645-0007Bx-Ku for v9fs-developer@lists.sourceforge.net;
 Tue, 26 Mar 2024 12:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FifTw0Ns0IOoKuiw3GR+UsLXthhvLvbof9qodQtP4UA=; b=fcbhcIweQPNNjNZUZX9fjjqz31
 DOrLmnbUaJH7N7NxK9SpJaxL1PHmiOEtlRuz1L4iMWdcixvKvOmA0UPFrck+sHydsJ9miO1E8y34t
 CAeeQZJfv2qrhpevtBoJ1sPKpmcOuwV2gIJvWnusV+rys+WqJtKr5uNz6ol3/Z2sLHsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FifTw0Ns0IOoKuiw3GR+UsLXthhvLvbof9qodQtP4UA=; b=b
 NE6KwY/JQHAeiXConem2GZPCqUoaHFvwFx4xIazDSx31QYTXnTOGHopZ2qweZlk9uJbX6nguYpzDw
 UsUwISxpqC3sb8qHfzHPHiTx1zQ5kC6MhJW8XaMzbgsiy6C35kEP6WtyYymuKAkdaYA2Upz9f1kak
 Cj5fengw7/pEVA6M=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rp644-0004XF-FS for v9fs-developer@lists.sourceforge.net;
 Tue, 26 Mar 2024 12:38:05 +0000
Date: Tue, 26 Mar 2024 06:37:53 -0600
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Daniel_Rodr=C3=ADguez?= <daniel.rodriguez@consultores-rh.com>
Message-ID: <ui97fbS3ylKuJEplg99ERzh1S0qHQfaoJII2OmUHbw@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNTEtMzA3OS00MjQxNS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzUxOzMwNzk7NDI0MTU7MjY5
X-bhid: X-bhd: 51;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 51:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1711456673; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Tue,=2026=20Mar=202024=2006:37:53=20-0600
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@consul
 tores-rh.com>
 |Reply-To:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@co
 nsultores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DA1Mejora_tu_proceso_de_reclutamiento_y_selecc
 i=3DC3=3DB3n!?=3D
 |Message-ID:<ui97fbS3ylKuJEplg99ERzh1S0qHQfaoJII2OmUHbw@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNTEtMzA3OS0
 0MjQxNS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzUxOzMwNzk7NDI0MT
 U7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipsywseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:51:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_ui97fbS3ylKuJEplg9
 9ERzh1S0qHQfaoJII2OmUHbw";
 bh=FifTw0Ns0IOoKuiw3GR+UsLXthhvLvbof9qodQtP4UA=;
 b=oVaEWFkJnxdzu8lKT2rwxXjhpGEKu4xvh9QYcuZ1MkmPi+PRPxqXoojVZuHOYsjAk+MjN6Vsj
 TBKdZMezKqyachUEUZ6v3SBqZ+w5LCrdAoRGk7fCGsm7pK0JPpISRGKFUeliQO+5ftrtMfwxF
 +LXa0D7O0xXGpPYfYBYDT4+BU=
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola &nbsp; Sabías que, de acuerdo con la revista The Quarterly
    Journal of Economics en la actualidad se invierten 23 días en contratar
   a un candidato y según&nbsp;con la encuesta de Bryant &amp; Stratton Coll
    [...] 
 
 Content analysis details:   (-0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1rp644-0004XF-FS
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

CgoKCQoJCgoKSG9sYQoKJm5ic3A7CgpTYWLDrWFzIHF1ZSwgZGUgYWN1ZXJkbyBjb24gbGEgcmV2
aXN0YSBUaGUgUXVhcnRlcmx5IEpvdXJuYWwgb2YgRWNvbm9taWNzIGVuIGxhIGFjdHVhbGlkYWQg
c2UgaW52aWVydGVuIDIzIGTDrWFzIGVuIGNvbnRyYXRhciBhIHVuIGNhbmRpZGF0byB5IHNlZ8O6
biZuYnNwO2NvbiBsYSBlbmN1ZXN0YSBkZSBCcnlhbnQgJmFtcDsgU3RyYXR0b24gQ29sbGVnZSBP
bmxpbmUgeSBXYWtlZmllbGQgUmVzZWFyY2ggZGVsIDEwMCUgZGUgbGFzIGNvbnRyYXRhY2lvbmVz
IHNvbG8gZWwgNDAlIGN1bXBsZSBjb24gbGFzIG5lY2VzaWRhZGVzIGRlIGxhcyB2YWNhbnRlcy4K
CiZuYnNwOwoKRXN0byBxdWllcmUgZGVjaXIgcXVlIGFkZW3DoXMmbmJzcDtkZSBzZXIgbGVudG8g
ZWwgcHJvY2VzbyBkZSBzZWxlY2Npw7NuJm5ic3A7ZGUgcGVyc29uYWwsIGxhIG1heW9yw61hIGRl
IGxvcyBjYW5kaWRhdG9zIG5vIGN1YnJlbiBhbCAxMDAlIGxhcyBuZWNlc2lkYWRlcyBsYWJvcmFs
ZXMKCiZuYnNwOwoKwr9JbnZpZXJ0ZSBtdWNobyB0aWVtcG8gZW4gY3VicmlyIHN1cyB2YWNhbnRl
cz8KCsK/U3VzIGNhbmRpZGF0b3Mgbm8gc2llbXByZSBzb24gbG9zIG1lam9yZXM/CgombmJzcDsK
Ck11Y2hhcyBlbXByZXNhcyB5IG9yZ2FuaXphY2lvbmVzIHV0aWxpemFuIGEgUHNpY29TbWFydCBj
b21vIGhlcnJhbWllbnRhIGRlIHJlY2x1dGFtaWVudG8geSBzZWxlY2Npw7NuLCB5YSBxdWUgbGVz
IGF5dWRhIGEgY29ub2NlciBhIGRldGFsbGUgbGFzIGNvbXBldGVuY2lhcyBkZSBzdXMgY2FuZGlk
YXRvcywgYXPDrSBjb21vIGFnaWxpemFyIGVsIHByb2Nlc28gZGUgcmVjbHV0YW1pZW50byB5IHNl
bGVjY2nDs24mbmJzcDtwb3IgbWVkaW8gZGUgcGVvcGxlIGFuYWx5dGljLCBpbnRlbGlnZW5jaWEg
YXJ0aWZpY2lhbCwgdmFsaWRhY2nDs24mbmJzcDtkZSBpZGVudGlkYWQsIGVudHJlIG90cm9zIG3D
qXRvZG9zIHF1ZSB0ZSBkYXLDoW4mbmJzcDtjbGFyaWRhZCB5IGNlcnRlemEgYWwgbW9tZW50byBk
ZSBsYSB0b21hIGRlIGRlY2lzaW9uZXMKCiZuYnNwOwoKU2kgbGUgaW50ZXJlc2EgbWVqb3JhciB0
dSBwcm9jZXNvIGRlIHJlY2x1dGFtaWVudG8sIHJlc3BvbmRlIGVzdGUgZW1haWwgZGFuZG8gY2xp
YyBhcXXDrSBvIHB1ZWRlJm5ic3A7Y29udGFjdGFyIGNvbm1pZ28gZW4gbG9zIHNpZ3VpZW50ZXMg
bsO6bWVyb3MgdGVsZWbDs25pY29zLgoKJm5ic3A7CgoKCQoJCQoJCQkKCQkJRGFuaWVsIFJvZHLD
rWd1ZXoKCgkJCUxsw6FtYW5vcyZuYnNwO3NpbiBjb3N0bzogMDAgMSAoODgwKSAzNTEgNzkyNAoK
CQkJQ2l1ZGFkIGRlIE3DqXhpY286ICg1NSkgNTAxOCAwNTY1CgoJCQlDb2xvbWJpYSwgQm9nb3TD
oTogKDU3MSkgNTgwIDAzNTEKCgkJCVJlcMO6YmxpY2EgRG9taW5pY2FuYTogKDgyOSkgOTU0IDgw
NzcKCgkJCUd1YXRlbWFsYTogKDUwMikgMjMxNSA5ODM1CgoJCQlFbCBTYWx2YWRvcjogKDUwMykg
MjExMyA5NDIyCgoJCQlDaGlsZTogKDU2KSAyMjU4IDM1OTI5CgoJCQlXaGF0c0FwcDogKzUyIDMz
IDE2MDcgMjA4OQoKCQkJJm5ic3A7CgkJCQoJCQkKCQkJCgkJCQoJCQoJCgoKJm5ic3A7CgpDbGlj
IGFxdcOtJm5ic3A7cGFyYSBkYXJzZSBkZSBiYWphLgoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVj
Y2kmb2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2Jh
bWFpbC5jb20vdW5zdXNjcmliZS5waHA/aWQ9dGV0d3lzcnFpcHN5d3NldXAiPmNsaWNrIGFxdSZp
YWN1dGU7PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
