Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D01048AD1ED
	for <lists+v9fs-developer@lfdr.de>; Mon, 22 Apr 2024 18:32:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rywax-0001lL-1U;
	Mon, 22 Apr 2024 16:32:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M109@s1.arrobamail.com>)
 id 1rywav-0001lC-IU for v9fs-developer@lists.sourceforge.net;
 Mon, 22 Apr 2024 16:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8YwHghmzExOowp2OXQpNNc0AIqKnz9CtUTcuiJy1ZdI=; b=bIaSSlZH8GztpuR13+mo62mVLL
 ozqKS4M+c9b9xdjmiPUVOsA8RuqZZuvO0vFMAxngtEecSxol5YxZtp2WqM2IipMw5APg5IxIo9fkK
 8a6t2puigzg9EF/6UvSiDFgJ4pKhTbyLKSsLYYIVyGXT7kZTWHNRVNK51PGxnrhoGT9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8YwHghmzExOowp2OXQpNNc0AIqKnz9CtUTcuiJy1ZdI=; b=V
 Ls9gLoLiw6QiXjdOruYcsrsbeo1wsrtLMB/lBsR4yXmXS5pz/ClDk7cTgd90C/K8x1KLBhUHh1fkB
 DY85uGJejJw5abmLF/0If6CZ4bcGrZXO/UjQyXaMDDCg4PYfpueopjbPpM4+pC16CuEeCcrgqtw3S
 nLUZrudigPLx/9KE=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rywau-0000iY-14 for v9fs-developer@lists.sourceforge.net;
 Mon, 22 Apr 2024 16:32:41 +0000
Date: Mon, 22 Apr 2024 11:32:28 -0500
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <8gcq3rl4Ujuy0do3JVj7pmBBxmkralpRZ5dGhSOc4@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA5LTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwOTszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 109;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 109:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1713803548; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Mon,=2022=20Apr=202024=2011:32:28=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?Plan_de_capacitaci=3DC3=3DB3n_anual?=3D
 |Message-ID:<8gcq3rl4Ujuy0do3JVj7pmBBxmkralpRZ5dGhSOc4@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTA5LTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwOTszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipswqpseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:109:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_8gcq3rl4Ujuy0do3JV
 j7pmBBxmkralpRZ5dGhSOc4";
 bh=8YwHghmzExOowp2OXQpNNc0AIqKnz9CtUTcuiJy1ZdI=;
 b=SrVk0MGudfDkiA4mG+QNfHW7RIMmbBan6ja/epcucB5N8RZGeDr1GsjrLo2lSyNIXk7Ex4teX
 LPC4ikrMUKlDkunuWoMlYNFfXLpWR5XEk6pNs2QgJWXlLAWg74yU2YL/1GxsLmKYzzPuuntyO
 tSkzLjB7cqeSy99I0hF/evUMY=
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, &nbsp; Un estudio de LinkedIn indica que el 94% de los
    empleados se inclinan a permanecer más&nbsp;tiempo en empresas que invierten
    en su desarrollo profesional. Esto subraya la importancia de contar con un
    [...] 
 
 Content analysis details:   (-0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: consultores-rh.com]
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
X-Headers-End: 1rywau-0000iY-14
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Plan_de_capacitaci=C3=B3n_anual?=
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
Reply-To: Mariann Rivas <mariann.rivas@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKSG9sYSwKCiZuYnNwOwoKVW4gZXN0dWRpbyBkZSBMaW5rZWRJbiBpbmRpY2EgcXVl
IGVsIDk0JSBkZSBsb3MgZW1wbGVhZG9zIHNlIGluY2xpbmFuIGEgcGVybWFuZWNlciBtw6FzJm5i
c3A7dGllbXBvIGVuIGVtcHJlc2FzIHF1ZSBpbnZpZXJ0ZW4gZW4gc3UgZGVzYXJyb2xsbyBwcm9m
ZXNpb25hbC4gRXN0byBzdWJyYXlhIGxhIGltcG9ydGFuY2lhIGRlIGNvbnRhciBjb24gdW5hIHBs
YXRhZm9ybWEgZWZpY2llbnRlIGRlIGNhcGFjaXRhY2nDs24sIGNvbW8gSHVtYW4gTGVhcm5pbmcs
IHBhcmEgcmV0ZW5lciB0YWxlbnRvIHkgbWVqb3JhciBsYSBjb21wZXRpdGl2aWRhZC4KCiZuYnNw
OwoKSHVtYW4gTGVhcm5pbmcgb2ZyZWNlIGNhcGFjaXRhY2nDs24mbmJzcDtvbmxpbmUgZWZlY3Rp
dmEgcGFyYSAxIGEgNSwwMDAgY29sYWJvcmFkb3JlcyBzaW11bHTDoW5lYW1lbnRlLCBjb24gdW4g
Y2F0w6Fsb2dvJm5ic3A7ZW4gZXhwYW5zacOzbiZuYnNwO2RlIG3DoXMmbmJzcDtkZSAxMDAgY3Vy
c29zIGVuIMOBcmVhcyZuYnNwO2NvbW8gcmVjdXJzb3MgaHVtYW5vcywgdmVudGFzLCB5IGRlc2Fy
cm9sbG8gaHVtYW5vIHkgZ2VyZW5jaWFsLiBBZGVtw6FzLCBjb24gSHVtYW4gTGVhcm5pbmcgcG9k
csOhcyBlbGFib3JhciB1biBwbGFuIGFudWFsIGRlIGNhcGFjaXRhY2nDs24mbmJzcDtwZXJzb25h
bGl6YWRvLCBhbGluZWFkbyBjb24gbGFzIG5lY2VzaWRhZGVzIHkgb2JqZXRpdm9zIGVzcGVjw61m
aWNvcyBkZSB0dSBlbXByZXNhIHkgZW1wbGVhZG9zLCBhc2VndXJhbmRvIHVuIGRlc2Fycm9sbG8g
cHJvZmVzaW9uYWwgY29uc3RhbnRlIHkgYWN0dWFsaXphZG8gY29uIGxhcyB0ZW5kZW5jaWFzIGRl
bCBtZXJjYWRvLgoKJm5ic3A7CgpCZW5lZmljaW9zIGRlIHVzYXIgSHVtYW4gTGVhcm5pbmc6Cgom
bmJzcDsKCgoJQWNjZXNvIGZsZXhpYmxlIHBhcmEgdG9kb3M6IFBlcm1pdGUgcXVlIHR1cyBlbXBs
ZWFkb3Mgc2UgY2FwYWNpdGVuIGRlc2RlIGN1YWxxdWllciBsdWdhciB5IGRpc3Bvc2l0aXZvLCBm
YWNpbGl0YW5kbyBsYSBnZXN0acOzbiZuYnNwO3kgc2VndWltaWVudG8gZGUgc3UgcHJvZ3Jlc28g
ZGUgZm9ybWEgZWZpY2llbnRlIHkgZXF1aXRhdGl2YS4KCU1vbml0b3JlbyBlbiB0aWVtcG8gcmVh
bDogT2JzZXJ2YSBlbCBhdmFuY2UgZGUgY2FkYSBlbXBsZWFkbyBjb24gZGF0b3MgYWN0dWFsaXph
ZG9zLCBsbyBxdWUgZmFjaWxpdGEgYWp1c3RlcyBwcmVjaXNvcyB5IG9wb3J0dW5vcyBwYXJhIG1h
eGltaXphciBzdSBkZXNhcnJvbGxvIHByb2Zlc2lvbmFsLgoJQ2VydGlmaWNhY2nDs24gYXV0b23D
oXRpY2E6IEFsIGNvbXBsZXRhciBsb3MgY3Vyc29zLCB0dXMgY29sYWJvcmFkb3JlcyByZWNpYmly
w6FuIGNlcnRpZmljYWRvcyBxdWUgcmVjb25vY2VuIHkgY2VsZWJyYW4gc3VzIGxvZ3JvcywgbW90
aXbDoW5kb2xvcyZuYnNwO2hhY2lhIHN1IGNyZWNpbWllbnRvIGNvbnRpbnVvCgoKJm5ic3A7CgpQ
YXJhIGRlc2N1YnJpciBjb21vJm5ic3A7SHVtYW4gTGVhcm5pbmcgcHVlZGUgZWxldmFyIGVsIHBv
dGVuY2lhbCBkZSB0dSBlcXVpcG8sIGNsaWMgYXF1w60sIG8gc2kgbG8gcXVlIHJlcXVpZXJlcyBl
cyB1bmEgZGVtb3N0cmFjacOzbiZuYnNwO2RlbCBzaXN0ZW1hLCBkYSBjbGljIGFxdcOtwq0uCgom
bmJzcDsKClNhbHVkb3MKCgoJCgkJCgkJCQoJCQlNYXJpYW5uIFJpdmFzCgoJCQkmbmJzcDsKCgkJ
CUxsw6FtYW5vcyBzaW4gY29zdG86IDAwIDEgKDg4MCkgMzUxIDc5MjQKCgkJCUNpdWRhZCBkZSBN
w6l4aWNvOiAoNTUpIDUwMTggMDU2NQoKCQkJQ29sb21iaWEsIEJvZ290w6E6ICg1NzEpIDU4MCAw
MzUxCgoJCQlSZXDDumJsaWNhIERvbWluaWNhbmE6ICg4MjkpIDk1NCA4MDc3CgoJCQlHdWF0ZW1h
bGE6ICg1MDIpIDIzMTUgOTgzNQoKCQkJRWwgU2FsdmFkb3I6ICg1MDMpIDIxMTMgOTQyMgoKCQkJ
Q2hpbGU6ICg1NikgMjI1OCAzNTkyOQoKCQkJV2hhdHNBcHA6ICs1MiAzMyAxNjA3IDIwODkKCQkJ
CgkJCQoJCQkKCQkJCgkJCgkKCgombmJzcDsKCiZuYnNwOwoKQ2xpYyBhcXXDrSZuYnNwO3BhcmEg
ZGFyc2UgZGUgYmFqYS4KCiZuYnNwOwoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVjY2kmb2FjdXRl
O24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2JhbWFpbC5jb20v
dW5zdXNjcmliZS5waHA/aWQ9dGV0d3lzcnFpcHN3cXBzZXVwIj5jbGljayBhcXUmaWFjdXRlOzwv
YT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=
