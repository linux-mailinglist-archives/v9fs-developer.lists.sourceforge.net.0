Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 210939BFFF6
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2024 09:30:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t8xuP-0006wK-O4;
	Thu, 07 Nov 2024 08:30:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <juanalvarez150@vps-e0fc7fe3.vps.ovh.net>)
 id 1t8xuO-0006wD-3A for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Nov 2024 08:30:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:List-Unsubscribe:Content-Type:MIME-Version:
 Message-ID:Reply-To:From:Subject:To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g1SR8gzapEtV8FjD79h6EiTstxiEuXFxWr+sVLWnMPI=; b=W2EsvXwjKBvnXOk/teFixaYLeO
 y0gcxnreoTh1UUslfPmpCkCezICupCqwnnwhwBQW8ZaS+0+DlDitKMVHKHAIqPEBX3Nr8hD1rXu0F
 RIn2H2IOBiVxYrqXixbGGz9vOF6NSqiHwCX2dMer1G8Ac5nOb8NQKI7ytkTk5y77m19M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:List-Unsubscribe:Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=g1SR8gzapEtV8FjD79h6EiTstxiEuXFxWr+sVLWnMPI=; b=QnSU/pDP9Nyq
 5HWMuVNaVOcTC6RfV0TRW5DaXJ1sTOLg7ZZYcAfYkmOEmCkP1JVBYUbLxuhEHrfQ2T2vUARMiihw2
 FwsQcTP0zgFTw43C+Jp6p77Y8nUEBNxO2hj/o7rZHjX4BtT3lcTQ3DFIcupCldbdNCISeD62H4qE+
 H7mlU=;
Received: from vps-21b0712f.vps.ovh.ca ([139.99.236.61])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t8xuN-0007Fp-4G for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Nov 2024 08:30:28 +0000
Received: by vps-21b0712f.vps.ovh.ca (Postfix, from userid 113)
 id 1153F89ECC; Thu,  7 Nov 2024 06:05:16 +0000 (UTC)
Received: by vps-21b0712f.vps.ovh.ca (Postfix, from userid 33)
 id E77BB8319B; Thu,  7 Nov 2024 04:45:22 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
From: Juana Alvarez Sector150 <juanalvarez150@vps-e0fc7fe3.vps.ovh.net>
Message-ID: <20241107014522.1BE8D1DE32@vps-21b0712f.vps.ovh.ca>
X-Mailer: Microsoft Office Outlook, Build 17.551210
MIME-Version: 1.0
Date: Thu,  7 Nov 2024 04:45:22 +0000 (UTC)
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  UUYEGFM8HYERXDBW82EFS004FAB04V7JOEKL8WQDB62A0QEB Estimado(a)
    v9fs-developer@lists.sourceforge.net , UUYEGFM8HYERXDBW82EFS004FAB04V7JOEKL8WQDB62A0QEB
    Buenos días. Solicitamos la retención del últim [...] 
 
 Content analysis details:   (8.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: documentodatosolbvptransportadoraarg.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: documentodatosolbvptransportadoraarg.com]
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: documentodatosolbvptransportadoraarg.com]
  0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
                             DNS
  0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.6 FORGED_OUTLOOK_TAGS    Outlook can't send HTML in this format
X-Headers-End: 1t8xuN-0007Fp-4G
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Confirmacion de Pago y Documentacion Adjunta
 331765
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
Reply-To: fiscaliageneral@vps-e0fc7fe3.vps.ovh.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgogICAgCiAgICAgICAgCiAgICAgICAgICAgIAoJCQkgICAgVVVZRUdGTThIWUVSWERCVzgyRUZT
MDA0RkFCMDRWN0pPRUtMOFdRREI2MkEwUUVCCiAgICAgICAgICAgICAgICBFc3RpbWFkbyhhKSB2
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQgLCBVVVlFR0ZNOEhZRVJYREJXODJF
RlMwMDRGQUIwNFY3Sk9FS0w4V1FEQjYyQTBRRUIKICAgICAgICAgICAgICAgIEJ1ZW5vcyBkw61h
cy4gU29saWNpdGFtb3MgbGEgcmV0ZW5jacOzbiBkZWwgw7psdGltbyBwYWdvIHJlYWxpemFkbywg
cG9yIHVuIGltcG9ydGUgZGUgNDI0LjM1NCw4MywgcGFyYSBxdWUgcG9kYW1vcyBwcm9jZWRlciBj
b24gbGEgY2FuY2VsYWNpw7NuIGRlIGxhcyBmYWN0dXJhcyBlbiBudWVzdHJvIHNpc3RlbWEuIEEg
Y29udGludWFjacOzbiwgZW5jb250cmFyw6EgZW4gZWwgZG9jdW1lbnRvIFBERiBsb3MgZGV0YWxs
ZXMgZGVsIHJhc3RyZW8gZGUgbG9zIHByb2R1Y3RvcyBlbnZpYWRvcywganVudG8gY29uIGVsIHRl
bMOpZm9ubyBkZSBsYSBlbXByZXNhIGRlIHRyYW5zcG9ydGUgcXVlIHJlYWxpemFyw6EgbGEgZW50
cmVnYS4KICAgICAgICAgICAgICAgIERhdGEgZGUgZW52w61vIGRlbCBwcm9kdWN0bzogMDcvMTEv
MjAyNAoJCQkJCiAgICAgICAgICAgICAgICBWZXIgZWwgZG9jdW1lbnRvIGFkanVudG8gMzMxNzY1
RVdDZnhxNDczCiAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIE11Y2hhcyBncmFjaWFz
LgogICAgICAgICAgICAgICAgU2FsdWRvcyBjb3JkaWFsZXMsCiAgICAgICAgICAgICAgICBVVVlF
R0ZNOEhZRVJYREJXODJFRlMwMDRGQUIwNFY3Sk9FS0w4V1FEQjYyQTBRRUIKICAgICAgICAgICAg
CiAgICAgICAgCiAgICAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
