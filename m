Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ECF7A570C
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Sep 2023 03:40:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qiPik-0003Wo-4q;
	Tue, 19 Sep 2023 01:40:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luis.ramirez@consultores-rh.com>) id 1qiPii-0003Wi-7r
 for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Sep 2023 01:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Type:Subject:To:Reply-To:
 From:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fU6BB6WZequZJWH36oBbD6PFJWN+5pd6Vx6/W0rh4Tc=; b=b0QX2y/2hb5YSpfhtvshmunIGh
 wmCCFnytJvGX51HvmnMCiGMm65m7KVXxUtwRwi4LJkGoXhArZWhTvQX4ewja/ZPV+wG/SVmgDNWFt
 1xsSbWipdMmPT9s66QIhMAWBNQXYJKzCKNivGV6OErOCmNaDt2fAClUUkDB7AHVphx1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Type:Subject:To:Reply-To:From:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fU6BB6WZequZJWH36oBbD6PFJWN+5pd6Vx6/W0rh4Tc=; b=e
 byeiTxvS9yEOcGkyle8PdWfopEtEOQg4/exMbPPjHsC6EWpe5d0j7TmWRSNEs+F3qsq8uF7c4Jc8v
 vD1B/ndpv9BRX6XuqU/ZZ0z+5C1by3zFYgEf0SQ/J8M9E6MuisBs+gF/XKblgtURHDirxDDZSIuS6
 CMpFR1ddjS1N/s6E=;
Received: from info.innova-fs.com ([67.225.227.180] helo=psicosmart-rh.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiPif-0007EW-N5 for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Sep 2023 01:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=psicosmart-rh.com; s=default; h=Message-ID:Date:Content-Type:Subject:To:
 Reply-To:From:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fU6BB6WZequZJWH36oBbD6PFJWN+5pd6Vx6/W0rh4Tc=; b=GRfwKMvrYntM30szWVV4YIIVkY
 f3dU5VosRK0YEpr5Bj2qfqQ4PjLVYmj6GF4/eSr+tPxt+H66zQHFQy07Zlhf1q+zWXw25wM0WKVCP
 N99nqkblV/U5VW84UL5wVIvCsQhP+2VuegcFqSD867DyWhEA32iLJRDxSt2rsdmTqmDK0L8JseL5E
 JEd83r8ZvYr9/+/DUmYvQ3lKkr9rbbqMhlH+t1Q2AuJU5wttlK9imPSs0ZqE3lmv4LEDwid2SWNds
 AZOkHtygrFGC19AZ4d/CKuM9ZoJpt1OPo9gholEiXdyToEyBCWiQJa6unyqANvUVJs92RGMlraegT
 0N2jDWCw==;
Received: from [177.225.59.82] (port=20674
 helo=customer-GDL-PUBLIC-CGN-59-82.megared.net.mx)
 by host.401hospedando.info with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <luis.ramirez@consultores-rh.com>) id 1qiPib-0000Ua-0F
 for v9fs-developer@lists.sourceforge.net;
 Mon, 18 Sep 2023 19:40:00 -0600
MIME-Version: 1.0
From: "Luis Ramirez" <luis.ramirez@consultores-rh.com>
To: v9fs-developer@lists.sourceforge.net
X-Mailer: Smart_Send_4_4_2
Date: Mon, 18 Sep 2023 19:39:57 -0600
Message-ID: <11160480893752632220045@DESKTOP-HUVFA9U>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.401hospedando.info
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - consultores-rh.com
X-Get-Message-Sender-Via: host.401hospedando.info: authenticated_id:
 psicosm1/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: host.401hospedando.info: psicosm1
X-Spam-Score: 4.5 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, espero te encuentres bien. La asignación y medición
    de objetivos (KPIs) son fundamentales para el éxito organizacional, ya que
    los KPIs logran enfocar a los colaboradores sobre un objetivo específico
    y darle continuidad al [...] 
 
 Content analysis details:   (4.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: psicosmart-rh.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 URI_TRUNCATED          BODY: Message contained a URI which was truncated
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1qiPif-0007EW-N5
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Maximiza el rendimiento de tus colaboradores
 mediante KPIs!
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
Reply-To: luis.ramirez@consultores-rh.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SG9sYSwgZXNwZXJvIHRlIGVuY3VlbnRyZXMgYmllbi4KCkxhIGFzaWduYWNpw7NuIHkgbWVkaWNp
w7NuIGRlIG9iamV0aXZvcyAoS1BJcykgc29uIGZ1bmRhbWVudGFsZXMgcGFyYSBlbCDDqXhpdG8g
b3JnYW5pemFjaW9uYWwsIHlhIHF1ZSBsb3MgS1BJcyBsb2dyYW4gZW5mb2NhciBhIGxvcyBjb2xh
Ym9yYWRvcmVzIHNvYnJlIHVuIG9iamV0aXZvIGVzcGVjw61maWNvIHkgZGFybGUgY29udGludWlk
YWQgYWwgbG9ncm8uCgogCgpTaW4gZW1iYXJnbywgZGVmaW5pciBsb3MgS1BJcyB5IGRhcmxlcyBz
ZWd1aW1pZW50byBwdWVkZSBzZXIgY29tcGxlam8gcGFyYSBsYSBtYXlvcsOtYSBkZSBsw61kZXJl
cy4gUG9yIGVsbG8gcXVpZXJvIGludml0YXJ0ZSBhIHV0aWxpemFyIFBsdXNvcmlhLCBlc3RlIGVz
IHVuIHNvZnR3YXJlIGVzcGVjaWFsaXphZG8gZW4gbGEgYXNpZ25hY2nDs24sIHNlZ3VpbWllbnRv
IHkgbWVkaWNpw7NuIGRlIEtQSXMgYmFqbyBsYSBtZXRvZG9sb2fDrWEgUy5NLkEuUi5ULiBMYSBo
ZXJyYW1pZW50YQoKaGFyw6EgdW4gY2FtYmlvIHJhZGljYWwgZW4gdHUgb3JnYW5pemFjacOzbiwg
eWEgcXVlIGRlIG1hbmVyYSBzZW5jaWxsYSB5IHLDoXBpZGEgdGUgYXl1ZGFyw6EgYSBkYXIgb3Jk
ZW4gZW4gbG9zIG9iamV0aXZvcyB5IGVuZm9jYXIgYSB0dXMgY29sYWJvcmFkb3JlcyBlbiBhY3Rp
dmlkYWRlcyBlc3RyYXTDqWdpY2FzLgoKIAoKQWxndW5hcyB2ZW50YWphcyBkZSB1dGlsaXphciBQ
bHVzb3JpYSBzb246CgogCgpBZG1pbmlzdHJhY2nDs24geSBlbmZvcXVlIGRlbCBwZXJzb25hbCwg
dGUgZGFyw6FzIGN1ZW50YSBkZWwgcmVuZGltaWVudG8gZGVsIGVxdWlwbyBlIGlkZW50aWZpY2Fy
w6FzIMOhcmVhcyBkZSBtZWpvcmEuCkxvZ3JvIGRlIG9iamV0aXZvcywgZGVzZGUgbGEgaW1wbGVt
ZW50YWNpw7NuIGRlIFBsdXNvcmlhIHZlcsOhcyBjb21vIGxvcyBjb2xhYm9yYWRvcmVzIGxvZ3Jh
biBsb3MgcmVzdWx0YWRvcyBhbCB0ZW5lciBtZXRhcyBjbGFyYXMgeSBtZWRpYmxlcy4KVG9tYSBk
ZSBkZWNpc2lvbmVzIGluZm9ybWFkYXMsIHRlbmRyw6FzIHVuIHBhbm9yYW1hIGNsYXJvIGRlIGNh
ZGEgw6FyZWEgbyBpbmRpdmlkdW8sIGxvIGN1YWwgdGUgcGVybWl0aXLDoSB0b21hciBkZWNpc2lv
bmVzIGJhc2FkYXMgZW4gZGF0b3MuCgpFbCBzaXN0ZW1hIGVzIGludHVpdGl2byB5IGRlIGbDoWNp
bCBpbXBsZW1lbnRhY2nDs24sIHNpIGRlc2VhcyBjb25vY2VyIG3DoXMgZGV0YWxsZXMgc29icmUg
ZXN0YSBoZXJyYW1pZW50YSBubyBkdWRlcyBlbiBjb250YWN0YXJub3MgbyByZXNwb25kZXIgZXN0
ZSBjb3JyZW8sIHRhbWJpw6luIHB1ZWRlcyBkYXIgY2xpYyBhcXXDrSBwYXJhIHBvbmVydGUgZW4g
Y29udGFjdG8uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=
