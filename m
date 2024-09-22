Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3D297E304
	for <lists+v9fs-developer@lfdr.de>; Sun, 22 Sep 2024 21:37:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ssSOE-0008R2-Oe;
	Sun, 22 Sep 2024 19:37:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <return@tekbeden.com>) id 1ssSOD-0008Qj-5Q
 for v9fs-developer@lists.sourceforge.net;
 Sun, 22 Sep 2024 19:37:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Transfer-Encoding:
 Content-Type:Mime-Version:Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fdrCmwA9y88r3u1Fq23qbqzdDH/6k69v9oNA5HVoPv0=; b=kALgzAy0iJUA/aVa5JRHp1b5Dr
 W6qo16irpYDwciL8/Pj1BKDr05T6yTJQL/Dp3S/wIFbLtu06HmuRpmaCxAVZiF0lCar7kDbFx/s37
 6eYznr/T2d94fTWGfd1vEdh7PJ+wsO4OVlSxdjoROS4Ns08jDhn5d5ppnUHGMaJt64/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Transfer-Encoding:Content-Type:Mime-Version:
 Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fdrCmwA9y88r3u1Fq23qbqzdDH/6k69v9oNA5HVoPv0=; b=QWccmdD8P9mPmk+brZJMBNm5Hi
 Gov/rgmr+IyPWaPBV6g6uB0aSF1tKXnmu+hmOkojU2ncLxt73fIHxcARr3/ZkKKKrpwMPAKIZ/Hio
 J6ArMRw1g03AmFOwVR34fVfjWw1u9+dU2XgfLMfsHOHk5z6w0JKVaHxO0vrF6K9hUAB4=;
Received: from 195-15-207-165.dc3-a.pub1.etik-cloud.com ([195.15.207.165]
 helo=tekbeden.com) by sfi-mx-2.v28.lw.sourceforge.com with esmtp 
 (Exim 4.95) id 1ssSOB-0008NW-UQ
 for v9fs-developer@lists.sourceforge.net;
 Sun, 22 Sep 2024 19:37:01 +0000
X-Spam-Flag: NO
Received-SPF: pass (mail117c60.megamailservers.eu: domain of
 bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no
 designates 193.69.50.22 as permitted sender)
 receiver=mail117c60.megamailservers.eu; client-ip=193.69.50.22;
 helo=mta7e.sndr.no;
 envelope-from=bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no;
 x-software=spfmilter 2.001 http://www.acme.com/software/spfmilter/ with
 libspf2-1.2.10; 
DMARC-Filter: OpenDMARC Filter v1.3.2 mail117c60.megamailservers.eu
 48JDfAF2033288
Authentication-Results: mail117c60.megamailservers.eu;
 dmarc=pass (p=none dis=none)
 header.from=arbeiderpartiet.no
Authentication-Results: mail117c60.megamailservers.eu; spf=pass
 smtp.mailfrom=bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no
X-Envelope-From: bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no
Authentication-Results: mail117c60.megamailservers.eu;
 dkim=pass (1024-bit key) header.d=arbeiderpartiet.no
 header.i=ikkesvar@arbeiderpartiet.no header.b="S0x/HPZw"
Received: from mta7e.sndr.no (mta7e.sndr.no [193.69.50.22])
 by mail117c60.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 48JDfAF2033288
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <kaander2@online.no>; Thu, 19 Sep 2024 13:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=key1;
 d=arbeiderpartiet.no; 
 h=Date:From:Reply-To:To:Message-ID:Subject:Mime-Version:Content-Type:
 Content-Transfer-Encoding:List-Unsubscribe:List-Unsubscribe-Post;
 i=ikkesvar@arbeiderpartiet.no;
 bh=UaDxSRJi+v9cFAjzre3R+gU5pCbPQ7FTadRovoB2ubU=;
 b=S0x/HPZw2fKmeMqBW0fhPFIFHvRskrfa+6tCF6+5jUUSTdw1phMlsxSVzKmdYq9ETt/3Z8L+CMb6
 V0wYqTuk6+6fABUygZm5BjyTXe0b6QGWuGHZBjDrrgZITNQT/cQnt5ucRNfsx26V+Uf4K9h6hUm5
 rF/zJLjhTFlVjnVnp1Y=
Received: by mta7e.sndr.no id htgllo37jogr for <kaander2@online.no>;
 Thu, 19 Sep 2024 15:37:05 +0200 (envelope-from
 <bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no>)
Date: Sun, 22 Sep 2024 18:39:24 +0000
From: Harbor Freight Rewards <ikkesvar@arbeiderpartiet.no>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <6648276006745092634@make.as>
Mime-Version: 1.0
X-Complaints-To: abuse@sndr.no
X-Type: default
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-VADE-SPAMSTATE: commercial:mce
X-VADE-SPAMSCORE: 17
X-VADE-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeftddrudeluddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecujffquffvqffrkfetpdfgpfggqdeviedtnecuuegrihhlohhuthemuceftddunecundfotefknffkpffiucdludejmdenucfjughrpeffhfhrvffkufggtgfgjfesrgejrfertddtjeenucfhrhhomheplfhonhgrshcuifgrhhhrucfuthpprhgvuceoihhkkhgvshhvrghrsegrrhgsvghiuggvrhhprghrthhivghtrdhnoheqnecuggftrfgrthhtvghrnhepkeelvddvieegueeitddutddukeefgfegueffheelvdekkeevtefgudevhfegueefnecuffhomhgrihhnpegrrhgsvghiuggvrhhprghrthhivghtrdhnohenucfkphepudelfedrieelrdehtddrvddvnecuvehluhhsthgvrhfuihiivgepudduheenucfrrghrrghmpehinhgvthepudelfedrieelrdehtddrvddvpdhhvghlohepmhhtrgejvgdrshhnughrrdhnohdpmhgrihhlfhhrohhmpegsnhgtrdhftghngefnifhvkfgsgeflfffhlefvmhhmffhhkhiihgeitggprhfpohfpqhfgvhfruffpjefjkgftjeehhfgfpedrvgesrghrsggvihguvghrphgrrhhtihgvthdrnhhopdhnsggprhgtphhtthhopedupdhrtghpthhtohepkhgrrghnuggvrhdvsehonhhlihhnvgdrnhho
X-Rspamd-Status: No, score=2.04
X-Rspamd-Result: default: False [2.04 / 6.00]; EXT_CSS(1.00)[];
 URI_COUNT_ODD(1.00)[9];
 DMARC_POLICY_ALLOW(-0.50)[arbeiderpartiet.no,none];
 MV_CASE(0.50)[];
 FORGED_SENDER(0.30)[ikkesvar@arbeiderpartiet.no,bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no];
 R_DKIM_ALLOW(-0.20)[arbeiderpartiet.no:s=key1];
 R_SPF_ALLOW(-0.20)[+ip4:193.69.50.16/28:c];
 MIME_BASE64_TEXT(0.10)[]; ONCE_RECEIVED(0.10)[];
 MIME_GOOD(-0.10)[multipart/alternative,text/plain];
 MANY_INVISIBLE_PARTS(0.05)[1]; HAS_LIST_UNSUB(-0.01)[];
 RCVD_TLS_LAST(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_TRACE(0.00)[0:+,1:+,2:~]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; RCVD_COUNT_ONE(0.00)[1];
 MISSING_XM_UA(0.00)[]; REPLYTO_ADDR_EQ_FROM(0.00)[];
 FROM_NEQ_ENVFROM(0.00)[ikkesvar@arbeiderpartiet.no,bnc.fcn4LGvIb4JDF9TmmDhkzW6c_rNoNqEvPSN7HZR75FU=.e@arbeiderpartiet.no];
 DKIM_TRACE(0.00)[arbeiderpartiet.no:+]; TO_DN_NONE(0.00)[];
 ASN(0.00)[asn:2116, ipnet:193.69.0.0/16, country:NO];
 PREVIOUSLY_DELIVERED(0.00)[kaander2@online.no];
 RCPT_COUNT_ONE(0.00)[1];
 HAS_REPLYTO(0.00)[ikkesvar@arbeiderpartiet.no]
X-Origin-Country: NO
X-Origin-ASN: 2116
X-WHL: LR
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Mer trygghet, mindre forskjeller og større muligheter. ‌
    ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌
    ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ [...] 
 
 Content analysis details:   (7.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [195.15.207.165 listed in bl.score.senderscore.com]
  5.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [195.15.207.165 listed in dnsbl-1.uceprotect.net]
  0.0 TVD_RCVD_IP            Message was received from an IP address
  0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_NONELEMENT_30_40  BODY: 30% to 40% of HTML elements are
                             non-standard
  0.0 AC_BR_BONANZA          RAW: Too many newlines in a row... spammy template
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
  0.4 RDNS_DYNAMIC           Delivered to internal network by host with
                             dynamic-looking rDNS
  0.0 DYNAMIC_IMGUR          dynamic IP + hosted image
  0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1ssSOB-0008NW-UQ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Expiring Soon : Your Daytona 3 Ton Car Jack Reward
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
Reply-To: ikkesvar@arbeiderpartiet.no
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TWVyIHRyeWdnaGV0LCBtaW5kcmUgZm9yc2tqZWxsZXIgb2cgc3TDuHJyZSBtdWxpZ2hldGVyLg0K
4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDi
gIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKA
jCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCM
IOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg
4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDi
gIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKA
jCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCM
IOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg
4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDi
gIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKA
jCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwNCg0KTG9nbyAtIEFyYmVpZGVycGFydGlldExv
Z28gLSBBcmJlaWRlcnBhcnRpZXRTZSBlLXBvc3RlbiBpDQpkaW4gbmV0dGxlc2VyICggaHJlZj0i
aHR0cHM6Ly9ueWhldHNicmV2LmFyYmVpZGVycGFydGlldC5uby9wL3IvZmNuNExHdkliNEpERjlU
bW1EaGt6VzZjX3JOb05xRXZQU043SFpSNzVGVT0iICkNCg0KS2rDpnJlIG1lZGxlbSwNCg0KDQpJ
IMOlciBmw6VyIGZvbGsgYmVkcmUgcsOlZC4NCg0KRXR0ZXIgw6V0dGUgw6VyIG1lZCB1c29zaWFs
ZSBrdXR0IHVuZGVyIEjDuHlyZSBvZyBGcnAsIGV0dGVyIHRpIMOlcg0KbmVzdGVuIHV0ZW4gcmVh
bGzDuG5uc3Zla3N0IGkgTm9yZ2UsIGV0dGVyIHRvIMOlciBtZWQga3JhZnRpZw0KcHJpc3Zla3N0
IG9nIHJlbnRlb3BwZ2FuZ2VyLCBzw6UgZXIgdmkgdmVkIGV0IHZlbmRlcHVua3QgaQ0Kw7hrb25v
bWllbiwgZGVyIGZvbGsgZsOlciBiZWRyZSByw6VkLiBOw6UgZsOlciBhcmJlaWQgaWdqZW4gw7hr
dCB2ZXJkaQ0KaSBOb3JnZS4gRGV0IGdqw7hyIGF0IGRldCB2aWwgbMO4bm5lIHNlZyBtZXIgw6Ug
am9iYmUuDQoNCkRldCBnasO4ciBhdCBlbmRhIGZsZXJlIGVubiBkZSAxNDUgMDAwIHNvbSBhbGxl
cmVkZSBoYXIga29tbWV0IGkNCmpvYmIgcMOlIHbDpXIgdmFrdCwgdmlsIGtvbW1lIGkgam9iYi4N
Cg0KT2cgbWVkIHN5c3NlbHNldHRpbmcgcMOlIHJla29yZG5pdsOlZXIgbWVkIGV0IG7DpnJpbmdz
bGl2IHNvbSBzZXR0ZXINCmVrc3BvcnRyZWtvcmRlciBvZyBpbnZlc3RlcmluZ3NyZWtvcmRlciwg
bWVkIGVuIHN0ZXJrZXJlDQp2ZWxmZXJkc3N0YXQsIHRhciB2aSBvZ3PDpSB2YXJlIHDDpSBub2Ug
YXYgZGV0IGZpbmVzdGUgamVnIHZldCBtZWQNCk5vcmdlLiBOb2UgYXYgZGV0IHNvbSBnasO4ciBO
b3JnZSB0aWwgTm9yZ2U6IERlIHNtw6UgZm9yc2tqZWxsZW5lLA0KZGVuIGjDuHllIHRpbGxpdGVu
IG9nIGRldCBzdGVya2UgZmVsbGVzc2thcGV0IQ0KDQpPbSB1bmRlciBldHQgw6VyIGVyIGRldCB2
YWxnIGkgTm9yZ2UuIFZlZCB2YWxnZXQgc2thbCBmb2xrIHZlbGdlDQplbiByZWdqZXJpbmcgZm9y
IMOlciBzb20gYmxpciBhdmdqw7hyZW5kZSBmb3IgbGFuZGV0IHbDpXJ0Og0KDQoqIERldHRlIGVy
IMOlciBkZXIgdmkgdHJlbmdlciDDpSBmw6UgMTUwIDAwMCBmbGVyZSBpIGFyYmVpZC4NCiogRGVy
IHZpIHNrYWwga3V0dGUgaSB2ZW50ZXRpZGVuZSBpIGhlbHNldGplbmVzdGVuLg0KKiBEZXIgdmkg
c2thbCBuw6Uga2xpbWFtw6VsZW5lLCBvbXN0aWxsZSBlbmVyZ2lzeXN0ZW1ldCB2w6VydC4NCiog
RGVyIHZpIHNrYWwgYmxpIHZlcmRlbnMgbWVzdCBkaWdpdGFsaXNlcnRlIHNhbWZ1bm4uDQoqIERl
ciB2aSBza2FsIGJ5Z2dlIGZvcnN2YXIgb2cgYmVyZWRza2FwIGZvciBlbiBueQ0Kc2lra2VyaGV0
c3BvbGl0aXNrIHNpdHVhc2pvbi4NCiogRGVyIHZpIHNrYWwgc3TDpSBww6UgaW50ZXJuYXNqb25h
bHQgZm9yIG1lciBmcmVkIG9nIGbDpnJyZSBrcmlnZXIuDQoqIERlciB2aSBza2FsIHZpIHNrYWwg
Zm9ydHNldHRlIGthbXBlbiBtb3QgZ2plbmdrcmltaW5hbGl0ZXRlbi4NClN0b3BwZSBueXJla3J1
dHRlcmluZ2VuLg0KKiBPZyBiaWRyYSB0aWwgYXQgZm9sayBiZWRyZSByw6VkLg0KRGV0dGUgZXIg
dGlkZW4gZm9yIMOlIHN0w6Ugc2FtbWVuIG9tIGVuIHBvbGl0aWtrIGZvciBtZXIgdHJ5Z2doZXQs
DQptaW5kcmUgZm9yc2tqZWxsZXIgb2cgc3TDuHJyZSBtdWxpZ2hldGVyIQ0KDQpGb3IgaHZlciBv
ZyBlbiDigJMgb2cgZm9yIG9zcyBpIGZlbGxlc3NrYXAhDQoNClNpZ25hdHVyIC0gSm9uYXMgR2Fo
ciBTdMO4cmVTaWduYXR1ciAtIEpvbmFzIEdhaHIgU3TDuHJlDQpKb25hcyBHYWhyIFN0w7hyZQ0K
UGFydGlsZWRlciBvZyBzdGF0c21pbmlzdGVyLCBBcmJlaWRlcnBhcnRpZXQNCg0KDQoNCkdpIGV0
IGJpZHJhZyB0aWwgdmFsZ2thbXBlbiAoIGhyZWY9Imh0dHA6Ly9hcmJlaWRlcnBhcnRpZXQubm8v
YmlkcmEvIiApDQrigIoNCkxvZ28gLSBBcmJlaWRlcnBhcnRpZXQgKCBocmVmPSJodHRwczovL3d3
dy5hcmJlaWRlcnBhcnRpZXQubm8iICkNCg0KRHUgbW90dGFyIGRlbm5lIGUtcG9zdGVuIGZvcmRp
IGR1IHN0w6VyIHDDpSBBcmJlaWRlcnBhcnRpZXRzDQplLXBvc3RsaXN0ZS4NCg0KRHUga2FuIGtv
bnRha3RlIG9zcyBww6UNCnBvc3RAYXJiZWlkZXJwYXJ0aWV0Lm5vICggaHJlZj0ibWFpbHRvOnBv
c3RAYXJiZWlkZXJwYXJ0aWV0Lm5vP3N1YmplY3Q9TnloZXRzYnJldiIgKQ0KDQpNZWxkIGRlZyBh
diBsaXN0ZW4gKCBocmVmPSJodHRwczovL255aGV0c2JyZXYuYXJiZWlkZXJwYXJ0aWV0Lm5vL3Av
dS9mY240TEd2SWI0SkRGOVRtbURoa3pXNmNfck5vTnFFdlBTTjdIWlI3NUZVPSIgKQ0KDQpBcmJl
aWRlcnBhcnRpZXQNCg0KWW91bmdzdG9yZ2V0IDJBDQoNCk9zbG8sIDAwMjgNCg0KTm9yd2F5Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
