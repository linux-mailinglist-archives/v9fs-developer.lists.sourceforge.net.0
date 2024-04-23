Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0C98ADB27
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Apr 2024 02:32:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rz45V-0002Fw-CX;
	Tue, 23 Apr 2024 00:32:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M118@s1.arrobamail.com>)
 id 1rz45U-0002Fo-5U for v9fs-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 00:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=snkW8PD21C+ka0EJMon4DZ2pG+QiP1DD7zhR23CnCX8=; b=FJgScRa1j741C3Py7OImHS9Oy1
 XiAXwbs5wAyRSEQUZLPjjMaynnVHkYrykh5Aurr4A9W+gNKjSaU9UC1s2zMhx5RGlzwLIqM2JPGCb
 9Pu8SRVkbPLVsAWBakYCHyaGLwn0criiUcMVEvxz9UVwtoEBfXrKRT3SRgvm3NM48OLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=snkW8PD21C+ka0EJMon4DZ2pG+QiP1DD7zhR23CnCX8=; b=N
 1efEb6cGAbPO/Jo+EUkc8ceLL2BuI/T9siHir1oqoGRGhhctRPptugemR1n+H0t1sdliNOqiEsRA7
 ExCDTfK6b6vfySpO7Ny3ZQKMsMhISYHlLk4iXxYp70fbS58Y2VeYC26H/mnJNqMcYlQbfT2jUl/Lz
 2Rcm1z6OocWBSNYQ=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rz45S-0005dQ-J3 for v9fs-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 00:32:44 +0000
Date: Mon, 22 Apr 2024 19:32:36 -0500
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Daniel_Rodr=C3=ADguez?= <daniel.rodriguez@consultores-rh.com>
Message-ID: <FPVCndnTQqRnWZ4urwUrXQdJrziL22G39G2NmwyzU@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTE4LTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzExODszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 118;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 118:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1713832356; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2022=20Apr=202024=2019:32:36=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@consul
 tores-rh.com>
 |Reply-To:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@co
 nsultores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DA1Revoluciona_tus_procesos_de_selecci=3DC3=3D
 B3n!?=3D
 |Message-ID:<FPVCndnTQqRnWZ4urwUrXQdJrziL22G39G2NmwyzU@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTE4LTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzExODszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipswwoseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:118:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_FPVCndnTQqRnWZ4urw
 UrXQdJrziL22G39G2NmwyzU";
 bh=snkW8PD21C+ka0EJMon4DZ2pG+QiP1DD7zhR23CnCX8=;
 b=pZ4qNtK42Q+5+TVNSY0lL4HIfWw6KN7+S+4B00vc80x2NkHRKQ46jMZVIh/NzUaJH75235sz6
 bmX0I2JTldZ0Uz1UGwBnnSXS0rScMAXLRGIMxsi1Vcnp41Lr4r/QqG1yVA2QDHB4W58KKXcj6
 GOYBczwdmQiy4IvpJ+z9UsQgs=
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, &nbsp; Entiendo perfectamente los retos que enfrentamos
    en los departamentos de Recursos Humanos para encontrar al candidato ideal
    para cada posición. Los procesos de selección&nbsp;no solo requieren de
    mu [...] 
 
 Content analysis details:   (-5.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: consultores-rh.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [190.105.146.28 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1rz45S-0005dQ-J3
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=A1Revoluciona_tus_procesos_de_sele?=
 =?utf-8?q?cci=C3=B3n!?=
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

CgoKCQoJCgoKSG9sYSwKCiZuYnNwOwoKRW50aWVuZG8gcGVyZmVjdGFtZW50ZSBsb3MgcmV0b3Mg
cXVlIGVuZnJlbnRhbW9zIGVuIGxvcyBkZXBhcnRhbWVudG9zIGRlIFJlY3Vyc29zIEh1bWFub3Mg
cGFyYSBlbmNvbnRyYXIgYWwgY2FuZGlkYXRvIGlkZWFsIHBhcmEgY2FkYSBwb3NpY2nDs24uIExv
cyBwcm9jZXNvcyBkZSBzZWxlY2Npw7NuJm5ic3A7bm8gc29sbyByZXF1aWVyZW4gZGUgbXVjaG8g
dGllbXBvLCBzaW5vIHF1ZSB0YW1iacOpbiBzdWVsZW4gZGVqYXIgdW5hIHNvbWJyYSBkZSBkdWRh
IHNvYnJlIHNpIGxhIGVsZWNjacOzbiZuYnNwO2hhIHNpZG8gbGEgY29ycmVjdGEuIFF1aWVybyBw
cmVzZW50YXJ0ZSBQc2ljb1NtYXJ0LCB1bmEgaGVycmFtaWVudGEgaW5ub3ZhZG9yYSBkaXNlw7Fh
ZGEmbmJzcDtwYXJhIG9wdGltaXphciB5IHNpbXBsaWZpY2FyIGxhIGFwbGljYWNpw7NuJm5ic3A7
ZGUgcHJ1ZWJhcyBwc2ljb23DqXRyaWNhcy9wc2ljb3TDqWNuaWNhcy4KCiZuYnNwOwoKUHNpY29T
bWFydCBoYSByZXZvbHVjaW9uYWRvIGxvcyBwcm9jZXNvcyBkZSBzZWxlY2Npw7NuLCBoYWNpZW5k
byBxdWUgY2FkYSBwYXNvIHNlYSBtw6FzJm5ic3A7Y2xhcm8geSBtdWNobyBtZW5vcyB0ZWRpb3Nv
LiBDb24gNCB0aXBvcyBkaWZlcmVudGVzIGRlIHJlcG9ydGVzIHkgMzUyIGNvbXBldGVuY2lhcyBt
ZWRpYmxlcywgUHNpY29TbWFydCB0ZSBvZnJlY2UgdW4gZW5mb3F1ZSBjb21wcmVuc2l2byB5IGRl
dGFsbGFkbyBwYXJhIGV2YWx1YXIgYSBsb3MgY2FuZGlkYXRvcy4KCiZuYnNwOwoKwr9RdcOpJm5i
c3A7cHVlZGUgaGFjZXIgUHNpY29TbWFydCBwb3IgdGk/CgombmJzcDsKCgoJQWhvcnJvIGRlIHRp
ZW1wbyBzaWduaWZpY2F0aXZvOiBBdXRvbWF0aXphIGxhIGludGVycHJldGFjacOzbiZuYnNwO2Rl
IHBydWViYXMgcHNpY29tw6l0cmljYXMsIHBlcm1pdGnDqW5kb3RlIGxpYmVyYXIgcmVjdXJzb3Mg
cGFyYSBjb25jZW50cmFydGUgZW4gb3RyYXMgYWN0aXZpZGFkZXMgY3LDrXRpY2FzLgoJUHJlY2lz
acOzbiZuYnNwO21lam9yYWRhOiBNaW5pbWl6YSBsb3MgZXJyb3JlcyBodW1hbm9zIG9mcmVjaWVu
ZG8gcmVzdWx0YWRvcyBjb25zaXN0ZW50ZXMgeSBjb25maWFibGVzLCBsbyBxdWUgdGUgZGEgbGEg
Y29uZmlhbnphIG5lY2VzYXJpYSBwYXJhIHRvbWFyIGRlY2lzaW9uZXMgZnVuZGFtZW50YWRhcy4K
CURlY2lzaW9uZXMgbcOhcyZuYnNwO2luZm9ybWFkYXM6IFByb3BvcmNpb25hIGluZm9ybWFjacOz
biZuYnNwO2NsYXJhIHkgcHJlY2lzYSBxdWUgZmFjaWxpdGEgbGEgaW50ZXJwcmV0YWNpw7NuJm5i
c3A7eSBjb21wYXJhY2nDs24mbmJzcDtkZSBjYW5kaWRhdG9zLCBhcG95YW5kbyBkZSBtYW5lcmEg
ZWZlY3RpdmEgdHVzIGRlY2lzaW9uZXMgZGUgY29udHJhdGFjacOzbi4KCgrigIsKClRlIGludml0
YW1vcyBhIGRlc2N1YnJpciBjw7NtbyZuYnNwO1BzaWNvU21hcnQgcHVlZGUgZmFjaWxpdGFyIHkg
bWVqb3JhciB0dXMgcHJvY2Vzb3MgZGUgc2VsZWNjacOzbi4gUGFyYSBtw6FzJm5ic3A7aW5mb3Jt
YWNpw7NuLCZuYnNwO2hheiBjbGljIGFxdcOtIG8gc29saWNpdGEgdW5hIGRlbW9zdHJhY2nDs24m
bmJzcDtncmF0dWl0YSBkYSZuYnNwO2NsaWMgYXF1w60uCgombmJzcDsKCgoJCgkJCgkJCQoJCQlE
YW5pZWwgUm9kcsOtZ3VlegoKCQkJTGzDoW1hbm9zJm5ic3A7c2luIGNvc3RvOiAwMCAxICg4ODAp
IDM1MSA3OTI0CgoJCQlDaXVkYWQgZGUgTcOpeGljbzogKDU1KSA1MDE4IDA1NjUKCgkJCUNvbG9t
YmlhLCBCb2dvdMOhOiAoNTcxKSA1ODAgMDM1MQoKCQkJUmVww7pibGljYSBEb21pbmljYW5hOiAo
ODI5KSA5NTQgODA3NwoKCQkJR3VhdGVtYWxhOiAoNTAyKSAyMzE1IDk4MzUKCgkJCUVsIFNhbHZh
ZG9yOiAoNTAzKSAyMTEzIDk0MjIKCgkJCUNoaWxlOiAoNTYpIDIyNTggMzU5MjkKCgkJCVdoYXRz
QXBwOiArNTIgMzMgMTYwNyAyMDg5CgoJCQkmbmJzcDsKCQkJCgkJCQoJCQkKCQkJCgkJCgkKCgom
bmJzcDsKCkNsaWMgYXF1w60mbmJzcDtwYXJhIGRhcnNlIGRlIGJhamEuCgoKCgpQYXJhIHJlbW92
ZXIgc3UgZGlyZWNjaSZvYWN1dGU7biBkZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6
Ly9zMS5hcnJvYmFtYWlsLmNvbS91bnN1c2NyaWJlLnBocD9pZD10ZXR3eXNycWlwc3d3b3NldXAi
PmNsaWNrIGFxdSZpYWN1dGU7PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
