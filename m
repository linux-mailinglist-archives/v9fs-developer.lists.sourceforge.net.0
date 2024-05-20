Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D75628CA202
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 May 2024 20:32:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s97ny-0006BE-UW;
	Mon, 20 May 2024 18:32:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M162@s1.arrobamail.com>)
 id 1s97nv-0006B3-12 for v9fs-developer@lists.sourceforge.net;
 Mon, 20 May 2024 18:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AybxI0vo816cz7VBAUM3Ma7DPJTBA9SWP0WiIFcmN1M=; b=G3RUKh5I3olk+CSXCNYmjJwked
 kZZOG0SveqeBc27RI8SgXWx8fY4Mvd2U7+Llj9f5kN01xQuoO9Yva40wHxOSqxN8sVcGN8MTyhZGq
 Xz5pyBhyxvT2inWaCutZcASbWPAuvbaWBySaKFtxlOvFnoTrhQS6WUHfPxgVqM/pK1Ro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AybxI0vo816cz7VBAUM3Ma7DPJTBA9SWP0WiIFcmN1M=; b=j
 ndFSqZQSO2+XFJKd4CVW8m+3eQFLN54boVJXmgHnleZlsijcJeXqKaWoxC9mAGKpYxctXrlYs2DDN
 rY+S7VfwnqufcD6nWDfWBk+RQCPxXOWUT3dhV1saHq94xih8zhxMX6HtBQ1G9QQWxQPEewa4BOArK
 VnoXOx4F6v7LRHUE=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s97nv-0005oj-FI for v9fs-developer@lists.sourceforge.net;
 Mon, 20 May 2024 18:32:12 +0000
Date: Mon, 20 May 2024 13:31:59 -0500
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Valeria_P=C3=A9rez?= <valeria.perez@consultores-rh.com>
Message-ID: <zEUE6g7y50hXJPFjPBgKyqZt5jRvv5mPSC2fpWIpeeo@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTYyLTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE2MjszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 162;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 162:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1716229919; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2020=20May=202024=2013:31:59=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consultores-
 rh.com>
 |Reply-To:=3D?utf-8?Q?Valeria_P=3DC3=3DA9rez?=3D=20<valeria.perez@consulto
 res-rh.com>
 |Subject:=3D?utf-8?Q?Tu_aliado_eficaz_en_la_gesti=3DC3=3DB3n_de_KPI?=3D
 |Message-ID:<zEUE6g7y50hXJPFjPBgKyqZt5jRvv5mPSC2fpWIpeeo@s1.arrobamail.com
 > |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTYyLTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE2MjszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipswueseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:162:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_zEUE6g7y50hXJPFjPB
 gKyqZt5jRvv5mPSC2fpWIpeeo";
 bh=AybxI0vo816cz7VBAUM3Ma7DPJTBA9SWP0WiIFcmN1M=;
 b=GKuXcv7s9NyaXQxBqp721Eb2mQ7aOZqw5T9HAFGusR7lsPTasv+vQEKFrFuGmfkiOBEIcnNxD
 zgsmFKCsqrHyzBOZGIjvnX1XZmQPR/exHDx9EeJ+k56T4/zWxOpN75+7G30gSYzFkVLZXb2lB
 dZlQ4aqDHIg7Xem5iEPpHaa6M=
X-Spam-Score: -3.9 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola. Como profesional del departamento de recursos humanos,
    sé&nbsp;lo complicado que puede ser gestionar, monitorizar y analizar los
    indicadores clave de rendimiento (KPI). Las hojas de cálculo&nbsp;a v [...]
    
 
 Content analysis details:   (-3.9 points, 6.0 required)
 
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
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1s97nv-0005oj-FI
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Tu_aliado_eficaz_en_la_gesti=C3=B3n_de?=
 =?utf-8?q?_KPI?=
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

CgoKCQoJCgoKSG9sYS4KCkNvbW8gcHJvZmVzaW9uYWwgZGVsIGRlcGFydGFtZW50byBkZSByZWN1
cnNvcyBodW1hbm9zLCBzw6kmbmJzcDtsbyBjb21wbGljYWRvIHF1ZSBwdWVkZSBzZXIgZ2VzdGlv
bmFyLCBtb25pdG9yaXphciB5IGFuYWxpemFyIGxvcyBpbmRpY2Fkb3JlcyBjbGF2ZSBkZSByZW5k
aW1pZW50byAoS1BJKS4gTGFzIGhvamFzIGRlIGPDoWxjdWxvJm5ic3A7YSB2ZWNlcyByZXN1bHRh
biBhYnJ1bWFkb3JhcyB5IG5vIHNpZW1wcmUgcHJvcG9yY2lvbmFuIGxvcyBkYXRvcyB5IGxhIGNs
YXJpZGFkIHF1ZSBuZWNlc2l0YW1vcywgwr92ZXJkYWQ/IEltYWfDrW5hdGUgdGVuZXIgdW4gc29m
dHdhcmUgcXVlIGhhZ2EgdG9kbyBlc2UgdHJhYmFqbyBwb3IgdGksIHF1ZSB0ZSBvZnJlemNhIHVu
YSB2aXNpw7NuJm5ic3A7Y2xhcmEgZGUgbG9zIGRhdG9zIHkgcXVlIHRlIHBlcm1pdGEgY2VudHJh
cnRlIGVuIGxvIHF1ZSByZWFsbWVudGUgaW1wb3J0YTogbGFzIHBlcnNvbmFzIHkgc3UgcmVuZGlt
aWVudG8uIEFxdcOtIGVzIGRvbmRlIGVudHJhIGVuIGp1ZWdvIFBsdXNvcmlhLgoKUGx1c29yaWEg
ZXMgdW4gc29mdHdhcmUgcXVlIGhhIHNpZG8gZGlzZcOxYWRvJm5ic3A7cHJlY2lzYW1lbnRlIHBh
cmEgcmVzb2x2ZXIgZXN0YSBwcm9ibGVtw6F0aWNhLiBSZWNvZ2UgeSBvcmdhbml6YSB0b2RvcyB0
dXMgS1BJIGVuIHVuIHNvbG8gbHVnYXIsIGZhY2lsaXRhbmRvIHN1IGludGVycHJldGFjacOzbiZu
YnNwO3kgcGVybWl0acOpbmRvdGUgdG9tYXIgZGVjaXNpb25lcyBpbmZvcm1hZGFzIHLDoXBpZGFt
ZW50ZS4gTXVjaGFzIGVtcHJlc2FzIGhhbiB2aXN0byBtZWpvcmFzIGVuIHN1IHBlcnNvbmFsIGdy
YWNpYXMgYSBzdSB1c28sIHBlcm8gbG9zIGJlbmVmaWNpb3MgZGUgUGx1c29yaWEgbm8gdGVybWlu
YW4gYWjDrS4gUXVpZXJvIGNvbXBhcnRpciBjb250aWdvIGxvcyBwcmluY2lwYWxlczoKCgoJQWhv
cnJvIGRlIHRpZW1wbzogYXV0b21hdGl6YSBsYSByZWNvbGVjY2nDs24geSBvcmdhbml6YWNpw7Nu
Jm5ic3A7ZGUgS1BJLCBwZXJtaXRpw6luZG90ZSBlbmZvY2FydGUgZW4gb3RyYXMgdGFyZWFzIGlt
cG9ydGFudGVzLgoJTWVqb3JhIGxhIHRvbWEgZGUgZGVjaXNpb25lczogcHJvcG9yY2lvbmEgdW5h
IHZpc3VhbGl6YWNpw7NuJm5ic3A7Y2xhcmEgeSBjb21wcmVuc2libGUgZGUgbG9zIGRhdG9zLCBm
YWNpbGl0YW5kbyBsYSB0b21hIGRlIGRlY2lzaW9uZXMgaW5mb3JtYWRhcy4KCVBlcnNvbmFsaXph
YmxlOiBwdWVkZXMgY29uZmlndXJhciBxdcOpJm5ic3A7aW5kaWNhZG9yZXMgZGVzZWFzIHJhc3Ry
ZWFyIHkgY29tbyZuYnNwO3Zpc3VhbGl6YXJsb3MuIAoJSW5mb3JtZXMgYXV0b23DoXRpY29zOiBn
ZW5lcmEgaW5mb3JtZXMgZGV0YWxsYWRvcyBxdWUgcHVlZGVuIHNlciBjb21wYXJ0aWRvcyBjb24g
dG9kbyBlbCBlcXVpcG8uCglTb3BvcnRlIHTDqWNuaWNvJm5ic3A7Y29uc3RhbnRlOiBudWVzdHJv
IGVxdWlwbyBlc3TDoSBzaWVtcHJlIGRpc3BvbmlibGUgcGFyYSBheXVkYXJ0ZSBjb24gY3VhbHF1
aWVyIGR1ZGEgbyBwcm9ibGVtYSBxdWUgcHVlZGFzIHRlbmVyLgoKCkVzdG95IGNvbnZlbmNpZG8g
ZGUgcXVlIFBsdXNvcmlhIHNlcsOhJm5ic3A7bGEgaGVycmFtaWVudGEgcXVlIHRlIGF5dWRhcmEg
YSZuYnNwO29wdGltaXphciB0dSBkZXNlbXBlw7FvJm5ic3A7eSBlbCBkZSB0dSBlcXVpcG8uIFNp
IHF1aWVyZXMgdmVyIGNvbW8mbmJzcDtQbHVzb3JpYSBwdWVkZSBiZW5lZmljaWFydGUsIHRlIGlu
dml0YW1vcyBhIHJlZ2lzdHJhcnRlIGRhbmRvIGNsaWMgYXF1w60geSBzb2xpY2l0YXIgdW5hIHBy
dWViYSBncmF0dWl0YSBTYWx1ZG9zCgpTYWx1ZG9zLgoKCgkKCQkKCQkJCgkJCVZhbGVyaWEgUMOp
cmV6CgoJCQlMbMOhbWFub3MmbmJzcDtzaW4gY29zdG86IDAwIDEgKDg4MCkgMzUxIDc5MjQKCgkJ
CUNvbG9tYmlhLCBCb2dvdMOhOiAoNTcxKSA1ODAgMDM1MQoKCQkJQ2l1ZGFkIGRlIE3DqXhpY286
ICg1NSkgNTAxOCAwNTY1CgoJCQlSZXDDumJsaWNhIERvbWluaWNhbmE6ICg4MjkpIDk1NCA4MDc3
CgoJCQlHdWF0ZW1hbGE6ICg1MDIpIDIzMTUgOTgzNQoKCQkJRWwgU2FsdmFkb3I6ICg1MDMpIDIx
MTMgOTQyMgoKCQkJQ2hpbGU6ICg1NikgMjI1OCAzNTkyOQoKCQkJV2hhdHNBcHA6ICs1MiAzMyAx
NjA3IDIwODkKCgkJCSZuYnNwOwoJCQkKCQkJCgkJCQoJCQkKCQkKCQoKCiZuYnNwOwoKJm5ic3A7
CgombmJzcDsKCiZuYnNwOwoKJm5ic3A7CgombmJzcDtQYXJhIGRhcnNlIGRlIGJhamEgZGVsIGJv
bGV0w61uIGRlJm5ic3A7Y2xpYyBhcXXDrS4KCgoKClBhcmEgcmVtb3ZlciBzdSBkaXJlY2NpJm9h
Y3V0ZTtuIGRlIGVzdGEgbGlzdGEgaGFnYSA8YSBocmVmPSJodHRwczovL3MxLmFycm9iYW1haWwu
Y29tL3Vuc3VzY3JpYmUucGhwP2lkPXRldHd5c3JxaXBzd3Vlc2V1cCI+Y2xpY2sgYXF1JmlhY3V0
ZTs8L2E+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
