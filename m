Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A688B768
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Mar 2024 03:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rowXs-0001Vt-4U;
	Tue, 26 Mar 2024 02:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M53@s1.arrobamail.com>)
 id 1rowXo-0001Vk-Kb for v9fs-developer@lists.sourceforge.net;
 Tue, 26 Mar 2024 02:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lrGOkF1KXRIHENWZtmCfln+ywaGSPHXLzmsuaSdXmNY=; b=cSdW/cLzs49PFEgINwu3phgHh3
 b187p5QmUt9Ayrj/urk8xgBGMP2+M2A/XGzEZm735IbucPSvJX4O2ZDVc+WHndIdvW8coV3jLGiN6
 vPFQiLhZVax7Lju/WEodOqPevjXlIEpPncCO/2+EC8C6savB3rc839Im2NDTFJkX6xJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lrGOkF1KXRIHENWZtmCfln+ywaGSPHXLzmsuaSdXmNY=; b=k
 LUakajLmrDJTKbXbXw9zL6tQ2Uc/SmUHKLZyTPeKwAZnrBNu8Lpn0X8s6xNdozTlp5qO9KbRWXJlk
 ikE7/9GPfX611aAF8eck82XMrZOxeOxKXlXJYkWX0R6A0YD1AqphguEW/kvHKgCovSUx+3L5iE40q
 Ar5Yw0DdL8YRmwfg=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rowXm-00041H-Ba for v9fs-developer@lists.sourceforge.net;
 Tue, 26 Mar 2024 02:28:09 +0000
Date: Mon, 25 Mar 2024 23:23:51 -0300
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Message-ID: <67rvicFWdll3RFe3vheBHOQubgyvdeHyDhwCyaRk@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNTMtMzA3OS00MjQxNS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzUzOzMwNzk7NDI0MTU7MjY5
X-bhid: X-bhd: 53;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 53:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1711419831; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2025=20Mar=202024=2023:23:51=20-0300
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@consulto
 res-rh.com>
 |Reply-To:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@cons
 ultores-rh.com>
 |Subject:=3D?utf-8?Q?Mejora_la_productividad_y_retenci=3DC3=3DB3n_de_tu_eq
 uipo_con_Evaltric?=3D
 |Message-ID:<67rvicFWdll3RFe3vheBHOQubgyvdeHyDhwCyaRk@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNTMtMzA3OS0
 0MjQxNS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzUzOzMwNzk7NDI0MT
 U7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipsyrseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:53:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_67rvicFWdll3RFe3vh
 eBHOQubgyvdeHyDhwCyaRk";
 bh=lrGOkF1KXRIHENWZtmCfln+ywaGSPHXLzmsuaSdXmNY=;
 b=fv3/GYnPD9ZnKiPNk1JKsNBedVI0T+DWMePS1HO5UCG1KxfnBqp7v7C99JylfSFjjJk9QcIKi
 7qIObDH8r3E+r5iBTPF/r3hyiJ80SPYdaqmdBn2IdEfis9asFwPuLDg285P+SsH/8iQx/o+yq
 xwFtMRgUOpndP865m35LVkn58=
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, ¿cómo estás? &nbsp; Como profesional de Recursos
   Humanos, enfrentas constantemente el desafío de medir, analizar y mejorar
    el clima organizacional, lidiar con diferentes personalidades, responder
   a las expectativas de l [...] 
 
 Content analysis details:   (-0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1rowXm-00041H-Ba
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Mejora_la_productividad_y_retenci?=
 =?utf-8?q?=C3=B3n_de_tu_equipo_con_Evaltric?=
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
Reply-To: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKSG9sYSwgwr9jw7NtbyBlc3TDoXM/CgombmJzcDsKCkNvbW8gcHJvZmVzaW9uYWwg
ZGUgUmVjdXJzb3MgSHVtYW5vcywgZW5mcmVudGFzIGNvbnN0YW50ZW1lbnRlIGVsIGRlc2Fmw61v
IGRlIG1lZGlyLCBhbmFsaXphciB5IG1lam9yYXIgZWwgY2xpbWEgb3JnYW5pemFjaW9uYWwsIGxp
ZGlhciBjb24gZGlmZXJlbnRlcyBwZXJzb25hbGlkYWRlcywgcmVzcG9uZGVyIGEgbGFzIGV4cGVj
dGF0aXZhcyBkZSBsb3MgZW1wbGVhZG9zLCBpZGVudGlmaWNhciBwcm9ibGVtYXMgZW1lcmdlbnRl
cyB5IHRvbWFyIGRlY2lzaW9uZXMgYmFzYWRhcyBlbiBkYXRvcyBzb24gZGlmaWN1bHRhZGVzIHF1
ZSBkZWJlcyBzdXBlcmFyIHRvZG9zIGxvcyBkw61hcwoKJm5ic3A7CgrCv1RlIHNpZW50ZXMgYWJy
dW1hZG8gYW50ZSBsYSBjb21wbGVqaWRhZCBkZSBlc3RhIHRhcmVhPyDCv1ByZW9jdXBhZG8gcG9y
IGxvcyByaWVzZ29zIHF1ZSBzdXBvbmUgdW4gY2xpbWEgbGFib3JhbCBubyBzYWx1ZGFibGUgcGFy
YSBsYSBwcm9kdWN0aXZpZGFkLCBpbm5vdmFjacOzbiZuYnNwO3kgcmV0ZW5jacOzbiZuYnNwO2Rl
IHRhbGVudG8gZGUgdHUgb3JnYW5pemFjacOzbj8gU2FiZW1vcyBxdWUgZXMgdW5hIGNhcmdhIHBl
c2FkYSwgcGVybyBubyBlc3TDoXMmbmJzcDtzb2xvIGVuIGVzdG8uCgombmJzcDsKClF1ZXJlbW9z
IHByZXNlbnRhcnRlIEV2YWx0cmljLgoKVW4gc29mdHdhcmUgZGUgbWVkaWNpw7NuJm5ic3A7eSBh
bsOhbGlzaXMmbmJzcDtkZWwgY2xpbWEgbGFib3JhbCBkaXNlw7FhZG8mbmJzcDtwYXJhIGF5dWRh
cnRlIGEgc3VwZXJhciBlc3RvcyBkZXNhZsOtb3MuIE51ZXN0cm8gc29mdHdhcmUgdGUgb2ZyZWNl
IHVuYSB2aXNpw7NuJm5ic3A7cHJlY2lzYSB5IGVuIHRpZW1wbyByZWFsIGRlbCBiaWVuZXN0YXIg
ZGUgdHUgZXF1aXBvLCBtZWRpYW50ZSBlbmN1ZXN0YXMgZXNwZWNpYWxpemFkYXMgZW4gY2xpbWEg
b3JnYW5pemFjaW9uYWwsIHBlcm1pdGnDqW5kb3RlIHRvbWFyIGRlY2lzaW9uZXMgaW5mb3JtYWRh
cyB5IGVzdHJhdMOpZ2ljYXMuIEV2YWx0cmljIHlhIGhhIHRyYW5zZm9ybWFkbyBsYSBnZXN0acOz
biZuYnNwO2RlbCBjbGltYSBvcmdhbml6YWNpb25hbCBkZSBtdWNoYXMgZW1wcmVzYXMgeSBvcmdh
bml6YWNpb25lcy4gQXF1w60gZXN0w6FuJm5ic3A7YWxndW5vcyBkZSBsb3MgYmVuZWZpY2lvcyBx
dWUgaGFuIGV4cGVyaW1lbnRhZG8gbnVlc3Ryb3MgdXN1YXJpb3M6CgombmJzcDsKCgoJQWhvcnJv
IGRlIHRpZW1wbyBlbiBlbCBhbsOhbGlzaXM6IEV2YWx0cmljIHRlIGFob3JyYXLDoSZuYnNwO3Rp
ZW1wbyB5IGVzZnVlcnpvIGFsIGF1dG9tYXRpemFyIGVsIGFuw6FsaXNpcyZuYnNwO2RlIGxhcyBl
bmN1ZXN0YXMsIGxvIHF1ZSB0ZSBwZXJtaXRpcsOhJm5ic3A7Y2VudHJhcnRlIGVuIGxhcyBzb2x1
Y2lvbmVzIHkgbm8gZW4gZWwgcHJvY2Vzby4KCUFnaWxpemFjacOzbiZuYnNwO2RlIHRvbWEgZGUg
ZGVjaXNpb25lcyBiYXNhZGFzIGVuIGRhdG9zOiBFdmFsdHJpYyB0ZSBwcm9wb3JjaW9uYSBkYXRv
cyBwcmVjaXNvcyB5IGVuIHRpZW1wbyByZWFsIHF1ZSByZXNwYWxkYXJhbiZuYnNwO3R1cyBkZWNp
c2lvbmVzIHkgdGUgYXl1ZGFyw6FuIGEgcHJlc2VudGFyIHByb3B1ZXN0YXMgZGUgbWVqb3JhIGNv
biBzZWd1cmlkYWQgYW50ZSBsYSBkaXJlY2Npw7NuJm5ic3A7ZGUgdHUgcHJveWVjdG8uCglGbGV4
aWJpbGlkYWQgeSBwZXJzb25hbGl6YWNpw7NuOiBOdWVzdHJvIHNvZnR3YXJlIHRlIHBlcm1pdGUg
YWRhcHRhciBsYXMgZW5jdWVzdGFzIGEgbGFzIG5lY2VzaWRhZGVzIGRlIHR1IGVxdWlwbywgbG8g
cXVlIHNpZ25pZmljYSBxdWUgcHVlZGVzIG9idGVuZXIgbGEgaW5mb3JtYWNpw7NuJm5ic3A7cXVl
IHJlYWxtZW50ZSBuZWNlc2l0YXMgcGFyYSBjcmVhciB1biBtZWpvciBhbWJpZW50ZS4KCUZvbWVu
dGEgZWwgZGVzYXJyb2xsbyB5IGxhIHJldGVuY2nDs24mbmJzcDtkZWwgcGVyc29uYWw6IEFsIG1l
am9yYXIgZWwgY2xpbWEgbGFib3JhbCwgdGFtYmnDqW4gYXVtZW50YXLDoSBsYSBzYXRpc2ZhY2Np
w7NuJm5ic3A7ZGUgbG9zIGVtcGxlYWRvcywgbG8gcXVlIGEgc3UgdmV6IHB1ZWRlIGNvbmR1Y2ly
IGEgdW5hIG1heW9yIHJldGVuY2nDs24mbmJzcDtkZSBwZXJzb25hbCB5IHVuIG1lam9yIGRlc2Vt
cGXDscOzLgoJRGV0ZWN0YSBwcm9ibGVtYXMgZW1lcmdlbnRlcyBvcG9ydHVuYW1lbnRlOiBDb24g
c3UgY2FwYWNpZGFkIHBhcmEgZGV0ZWN0YXIgcGF0cm9uZXMgeSB0ZW5kZW5jaWFzLCBFdmFsdHJp
YyB0ZSBheXVkYXLDoSZuYnNwO2lkZW50aWZpY2FyIHByb2JsZW1hcyBhbnRlcyBkZSBxdWUgc2Ug
Y29udmllcnRhbiBlbiBjcmlzaXMsIHBlcm1pdGnDqW5kb3RlIHRvbWFyIG1lZGlkYXMgcHJldmVu
dGl2YXMgeSBtZWpvcmFyIGxhIHNhdGlzZmFjY2nDs24mbmJzcDtkZWwgZXF1aXBvLgoKCiZuYnNw
OwoKQWhvcmEgZXMgdHUgdHVybm8gZGUgdG9tYXIgZWwgY29udHJvbCBkZWwgY2xpbWEgb3JnYW5p
emFjaW9uYWwgZGUgdHUgZXF1aXBvLiBUZSBpbnZpdGFtb3MgYSBwcm9iYXIgRXZhbHRyaWMgeSBk
ZXNjdWJyaXIgdG9kbyBsbyBxdWUgcHVlZGUgaGFjZXIgcG9yIHR1IGVtcHJlc2EgdSBvcmdhbml6
YWNpw7NuLiBIYXogY2xpYyBhcXXDrSBwYXJhIGNvbWVuemFyIHR1IHBydWViYSBncmF0dWl0YS4g
RXN0YW1vcyBzZWd1cm9zIGRlIHF1ZSwgdW5hIHZleiBxdWUgcHJ1ZWJlcyBFdmFsdHJpYywgw6ls
IGRlc2VtcGXDscOzJm5ic3A7ZGUgdHUgZXF1aXBvIHNlIHZlcsOhIG1lam9yYWRvLgoKJm5ic3A7
CgpObyBlc3BlcmVzIG3DoXMsIMKhRW1waWV6YSBhIG1lam9yYXIgZWwgY2xpbWEgbGFib3JhbCBj
b24gRXZhbHRyaWMgaG95IG1pc21vIQoKJm5ic3A7CgoKCQoJCQoJCQkKCQkJSmFzc2llbCBSYW3D
rXJlegoKCQkJTGzDoW1hbm9zJm5ic3A7c2luIGNvc3RvOiAwMCAxICg4ODApIDM1MSA3OTI0CgoJ
CQlDaXVkYWQgZGUgTcOpeGljbzogKDU1KSA1MDE4IDA1NjUKCgkJCUNvbG9tYmlhLCBCb2dvdMOh
OiAoNTcxKSA1ODAgMDM1MQoKCQkJUmVww7pibGljYSBEb21pbmljYW5hOiAoODI5KSA5NTQgODA3
NwoKCQkJR3VhdGVtYWxhOiAoNTAyKSAyMzE1IDk4MzUKCgkJCUVsIFNhbHZhZG9yOiAoNTAzKSAy
MTEzIDk0MjIKCgkJCUNoaWxlOiAoNTYpIDIyNTggMzU5MjkKCgkJCVdoYXRzQXBwOiArNTIgMzMg
MTYwNyAyMDg5CgkJCQoJCQkKCQkJCgkJCQoJCQoJCgoKJm5ic3A7CgpDbGljIGFxdcOtJm5ic3A7
cGFyYSBkYXJzZSBkZSBiYWphLgoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVjY2kmb2FjdXRlO24g
ZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2JhbWFpbC5jb20vdW5z
dXNjcmliZS5waHA/aWQ9dGV0d3lzcnFpcHN5cnNldXAiPmNsaWNrIGFxdSZpYWN1dGU7PC9hPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
