Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BC27FE521
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Nov 2023 01:56:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1r8VLT-00017b-1W;
	Thu, 30 Nov 2023 00:55:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounce-mc.us21_200095866.12657194-b44c1765c6@mail202.atl271.mcdlv.net>)
 id 1r8VLS-00017V-6T for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Nov 2023 00:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:List-Unsubscribe:List-ID:
 Message-ID:Date:To:Reply-To:From:Subject:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wYK7xMicuCvQnmq0PrS+eWzPhJ4uJkWHVqc9UkEifgs=; b=PyADyCXgGEzcbYquin/nzg25B8
 lN99AEHHhmSXwJAbOY5Zvc4LGbWy+F6Ltl5B57dufJzUwNsuErqMO6qd3PmEaJlyOG71OLNRPKQtG
 0/BCymMlvkbIIKstFe9/+0GrLx+KLZrBsytm8Bjgjc05XddEBXeCMuQ53tMAZBPuUeps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:List-Unsubscribe:List-ID:Message-ID:Date:To:
 Reply-To:From:Subject:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wYK7xMicuCvQnmq0PrS+eWzPhJ4uJkWHVqc9UkEifgs=; b=m
 ara6DOiou+VnFtodb29d0n90CUevQIdgS04ohyJhWMrIfMALnjQ9kntSQkVmUZwppdH8n6cUXFQ9g
 YEMDqm2Uz5G2ZqQE8oFHvh72mrVIt8aPLQQtTgb2PcWyn2U+ol990e1t3fIbEJ9JBe6CLGpHw1LEm
 ZejFMjGv5+s/MWOI=;
Received: from mail202.atl271.mcdlv.net ([198.2.142.202])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r8VLR-0008Nk-CK for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Nov 2023 00:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailchimpapp.net;
 s=k2; t=1701305740; x=1701566240;
 i=contacto=3Dpsicosmart-rh.com@mailchimpapp.net;
 bh=wYK7xMicuCvQnmq0PrS+eWzPhJ4uJkWHVqc9UkEifgs=;
 h=Subject:From:Reply-To:To:Date:Message-ID:X-MC-User:Feedback-ID:
 List-ID:List-Unsubscribe:List-Unsubscribe-Post:Content-Type:
 MIME-Version:CC:Date:Subject:From;
 b=IBKFkI+LJNCKSgt94LFb4nITAF4rC8shXu9v0FCL3IkIzQccveYODg0VpLC/jekK0
 5BXPnPwxzRaGgzFDNPwswWas1GoaAQN3VsJS/1HLUM27Rhssd++6dzvs2TEKJLF8YR
 PbNMwGlIYhkTCCOit1nEEXYqRA1xhKoKV+vOVKxXmUgyCEw0QReFyFh8SVTV6aZeAY
 rYUGFg7dmCpPW3anhJEKUC1gqkdH9js9x7MceWP/+yoRQodlvTJZBQaXah434KwmNp
 Fu24gRs4lG4CM3yDN7uerQKCCrG67OvrKRzodeNowYbu/NcbAT/VXNyw3DkUJPK5Lu
 GZq7X1lVxTjDw==
Received: from localhost (localhost [127.0.0.1])
 by mail202.atl271.mcdlv.net (Mailchimp) with ESMTP id 4Sgd6410bXzLfcvVT
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Nov 2023 00:55:40 +0000 (GMT)
From: =?utf-8?Q?PsicoSmart?= <contacto@psicosmart-rh.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 30 Nov 2023 00:55:32 +0000
Message-ID: <0f12c80baf52daf9d9b6c6c52.b44c1765c6.20231130005518.a6711dd77b.0b5939d2@mail202.atl271.mcdlv.net>
X-Mailer: Mailchimp Mailer - **CIDa6711dd77bb44c1765c6**
X-Campaign: mailchimp0f12c80baf52daf9d9b6c6c52.a6711dd77b
X-campaignid: mailchimp0f12c80baf52daf9d9b6c6c52.a6711dd77b
X-Report-Abuse: Please report abuse for this campaign here:
 https://mailchimp.com/contact/abuse/?u=0f12c80baf52daf9d9b6c6c52&id=a6711dd77b&e=b44c1765c6
X-MC-User: 0f12c80baf52daf9d9b6c6c52
Feedback-ID: 200095866:200095866.12657194:us21:mc
X-Accounttype: pr
List-Unsubscribe-Post: List-Unsubscribe=One-Click
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Conoce PsicoSmart. ** ¡Mejora tu proceso de selección de
    personal! ** Con PsicoSmart evalúa hasta 338 competencias de tus candidatos
    como honestidad, liderazgo, inteligencia, etc. 
 
 Content analysis details:   (0.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: list-manage.com]
 -0.4 RCVD_IN_IADB_LISTED    RBL: Participates in the IADB system
                             [198.2.142.202 listed in iadb.isipp.com]
 -0.2 RCVD_IN_IADB_RDNS      RBL: IADB: Sender has reverse DNS record
 -0.2 RCVD_IN_IADB_DK        RBL: IADB: Sender publishes Domain Keys record
 -0.0 RCVD_IN_IADB_SPF       RBL: IADB: Sender publishes SPF record
 -0.0 RCVD_IN_IADB_SENDERID  RBL: IADB: Sender publishes Sender ID
                             record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [198.2.142.202 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [198.2.142.202 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_IMAGE_RATIO_06    BODY: HTML has a low ratio of text to image
                             area
  0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
                             chars
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1r8VLR-0008Nk-CK
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Conoce_PsicoSmart_y_selecciona_al_mejo?=
 =?utf-8?q?r_candidato=2E?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: =?utf-8?Q?PsicoSmart?= <contacto@psicosmart-rh.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="fixed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Q29ub2NlIFBzaWNvU21hcnQuCgoKKiogwqFNZWpvcmEgdHUgcHJvY2VzbyBkZSBzZWxlY2Npw7Nu
IGRlIHBlcnNvbmFsIQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCgoqKiBDb24gUHNpY29TbWFydCBldmFsw7phIGhhc3RhIDMzOCBj
b21wZXRlbmNpYXMgZGUgdHVzIGNhbmRpZGF0b3MgY29tbyBob25lc3RpZGFkLCBsaWRlcmF6Z28s
IGludGVsaWdlbmNpYSwgZXRjLgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCgoqKiAzMCBwcnVlYmFzIHBzaWNvbcOpdHJpY2FzCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQoKUHNpY29TbWFydCBhY3R1YWxtZW50ZSBlcyBsYSBwbGF0YWZvcm1hIGNvbiBlbCBtYXlvciBu
w7ptZXJvIGRlIHBydWViYXMgcHNpY29tw6l0cmljYXMsIGxvIHF1ZSB0ZSBwZXJtaXRpcsOhIGNv
bm9jZXIgZGlzdGludGFzIGNvbXBldGVuY2lhcyBkZSB0dXMgY2FuZGlkYXRvcyBjb21vOgoqIEhv
bmVzdGlkYWQKKiBMaWRlcmF6Z28KKiBWZW50YXMKKiBJbnRlbGlnZW5jaWEKKiBIYWJpbGlkYWRl
cyBhZG1pbmlzdHJhdGl2YXMKKiBDb211bmljYWNpw7NuIGVmZWN0aXZhCiogRW5mb3F1ZSBhbCBj
bGllbnRlCiogTcOhcyAzMzEgY29tcGV0ZW5jaWFzCgpDb25vY2VyIGxhcyBwcnVlYmFzIChtYWls
dG86Y29udGFjdG9AcHNpY29zbWFydC1yaC5jb20/c3ViamVjdD1Db25vY2VyJTIwbGFzJTIwcHJ1
ZWJhcyUyMGRlJTIwUHNpY29TbWFydC4mYm9keT1Tb2xpY2l0byUyMG0lQzMlQTFzJTIwaW5mb3Jt
YWNpJUMzJUIzbiUyQyUyMG1pcyUyMGRhdG9zJTIwc29uJTNBJTBBJTBBTm9tYnJlJTNBJTBBRW1w
cmVzYSUzQSUwQVRlbCVDMyVBOWZvbm8lM0ElMEFDb21lbnRhcmlvcyUzQSkKCgoqKiBSZXBvcnRl
cyBpbnR1aXRpdm9zCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQoKQ29uIG51ZXN0cmEgcGxhdGFmb3JtYSBvYnTDqW4gZGUgbWFuZXJh
IGlubWVkaWF0YSBoYXN0YSA0IHRpcG9zIGRpc3RpbnRvcyBkZSByZXBvcnRlcyBkZSB0dXMgY2Fu
ZGlkYXRvczoKKiBSZXN1bHRhZG9zIHZzIHBlcmZpbCBkZSBwdWVzdG8KKiBJbnRlZ3JhdGl2bwoq
IENvbXBhcmF0aXZvIGVudHJlIGNhbmRpZGF0b3MKKiBDb25jZW50cmFkbwoKVG9kb3MgbG9zIHJl
cG9ydGVzIHNvbiBleHBvcnRhYmxlcyBhIFdvcmQsIEV4Y2VsIHkgUERGLgpWZXIgZWplbXBsb3Mg
ZGUgcmVwb3J0ZXMgKG1haWx0bzpjb250YWN0b0Bwc2ljb3NtYXJ0LXJoLmNvbT9zdWJqZWN0PVZl
ciUyMGVqZW1wbG9zJTIwZGUlMjByZXBvcnRlcy4mYm9keT1Tb2xpY2l0byUyMG0lQzMlQTFzJTIw
aW5mb3JtYWNpJUMzJUIzbiUyQyUyMG1pcyUyMGRhdG9zJTIwc29uJTNBJTBBJTBBTm9tYnJlJTNB
JTBBRW1wcmVzYSUzQSUwQVRlbCVDMyVBOWZvbm8lM0ElMEFDb21lbnRhcmlvcyUzQSkKCgoqKiBF
eHRyYXMgZGUgcmVjbHV0YW1pZW50bwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KClBzaWNvU21hcnQgY3VlbnRhIGNvbiBtdWNoYXMg
Y2FyYWN0ZXLDrXN0aWNhcyBleHRyYXMgcXVlIGF5dWRhbiBhIGRpc21pbnVpciB0aWVtcG9zIHkg
Y29zdG9zIGVuIGVsIHJlY2x1dGFtaWVudG8geSBzZWxlY2Npw7NuLCBhbGd1bmFzIGNhcmFjdGVy
w61zdGljYXMgc29uOgoqIEV4w6FtZW5lcyB0w6ljbmljb3MgeSBwZXJzb25hbGl6YWRvcwoqIENh
cGFjaXRhY2nDs24gZW4gUlJISCBzaW4gY29zdG8KKiBWaWRlbyBlbnRyZXZpc3RhIGEgY2FuZGlk
YXRvcwoqIERlc2NyaXBjaW9uZXMgZGUgcHVlc3RvcwoqIFkgbXVjaG8gbcOhcwoKQWdlbmRhciB1
bmEgdmlkZW8gZGVtb3N0cmFjacOzbiAobWFpbHRvOmNvbnRhY3RvQHBzaWNvc21hcnQtcmguY29t
P3N1YmplY3Q9QWdlbmRhciUyMGRlbW9zdHJhY2klQzMlQjNuJTIwZGUlMjBQc2ljb1NtYXJ0LiZi
b2R5PVNvbGljaXRvJTIwbSVDMyVBMXMlMjBpbmZvcm1hY2klQzMlQjNuJTJDJTIwbWlzJTIwZGF0
b3MlMjBzb24lM0ElMEElMEFOb21icmUlM0ElMEFFbXByZXNhJTNBJTBBVGVsJUMzJUE5Zm9ubyUz
QSUwQUNvbWVudGFyaW9zJTNBKQoKCioqIFByZWNpb3MgeSBwYXF1ZXRlcyBhZGFwdGFkb3MgYSB0
dXMgbmVjZXNpZGFkZXMKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCk3DoXMgaW5mb3JtYWNpw7NuIChtYWlsdG86Y29udGFjdG9AcHNp
Y29zbWFydC1yaC5jb20/c3ViamVjdD1NJUMzJUExcyUyMGluZm9ybWFjaSVDMyVCM24lMjBkZSUy
MFBzaWNvU21hcnQuJmJvZHk9U29saWNpdG8lMjBtJUMzJUExcyUyMGluZm9ybWFjaSVDMyVCM24l
MkMlMjBtaXMlMjBkYXRvcyUyMHNvbiUzQSUwQSUwQU5vbWJyZSUzQSUwQUVtcHJlc2ElM0ElMEFU
ZWwlQzMlQTlmb25vJTNBJTBBQ29tZW50YXJpb3MlM0EpCmh0dHBzOi8vZmFjZWJvb2suY29tL3Av
UHNpY29TbWFydC0xMDAwNTQzNTM0NDgzMTcvIGh0dHBzOi8vaW5zdGFncmFtLmNvbS9wc2ljb3Nt
YXJ0X29mZmljaWFsLyBodHRwczovL3Rpa3Rvay5jb20vQHBzaWNvc21hcnQKCkNvcHlyaWdodCAo
QykgMjAyMyBTci4gVG9kb3MgbG9zIGRlcmVjaG9zIHJlc2VydmFkb3MuCkhhcyByZWNpYmlkbyBl
c3RlIGNvcnJlbyBlbGVjdHLDs25pY28gcG9ycXVlIGxvIGhhcyBhY2VwdGFkbyBlbiBudWVzdHJv
IHNpdGlvIHdlYi4KCk51ZXN0cmEgZGlyZWNjacOzbiBkZSBjb3JyZW8gZXM6ClNyCkF2LiBNb250
ZSBDYXJtZWxvClNhbiBQZWRybyBUbGFxdWVwYXF1ZSwgSmFsLiA0NTYwOQpNZXhpY28Kwr9RdWll
cmVzIGNhbWJpYXIgbGEgZm9ybWEgZW4gcXVlIHJlY2liZXMgZXN0b3MgY29ycmVvcyBlbGVjdHLD
s25pY29zPwoKUHVlZGVzIGFjdHVhbGl6YXIgdHVzIHByZWZlcmVuY2lhcyAoaHR0cHM6Ly9wc2lj
by1zbWFydC51czIxLmxpc3QtbWFuYWdlLmNvbS9wcm9maWxlP3U9MGYxMmM4MGJhZjUyZGFmOWQ5
YjZjNmM1MiZpZD00MWI0OGMyM2Q4JmU9YjQ0YzE3NjVjNiZjPWE2NzExZGQ3N2IpIG8gY2FuY2Vs
YXIgbGEgc3VzY3JpcGNpw7NuIChodHRwczovL3BzaWNvLXNtYXJ0LnVzMjEubGlzdC1tYW5hZ2Uu
Y29tL3Vuc3Vic2NyaWJlP3U9MGYxMmM4MGJhZjUyZGFmOWQ5YjZjNmM1MiZpZD00MWI0OGMyM2Q4
JmU9YjQ0YzE3NjVjNiZjPWE2NzExZGQ3N2IpCgpWZXIgZW4gZWwgbmF2ZWdhZG9yIChodHRwczov
L21haWxjaGkubXAvMDgyNjc0MTMxMjkyL2Nvbm9jZS1wc2ljb3NtYXJ0LXktc2VsZWNjaW9uYS1h
bC1tZWpvci1jYW5kaWRhdG8/ZT1iNDRjMTc2NWM2KQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
