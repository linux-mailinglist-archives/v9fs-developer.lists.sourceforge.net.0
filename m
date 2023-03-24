Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F06A86C944E
	for <lists+v9fs-developer@lfdr.de>; Sun, 26 Mar 2023 14:39:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgPf9-00040H-9N;
	Sun, 26 Mar 2023 12:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alan.beran@grenfellbiz.com>) id 1pgPf8-00040A-Cb
 for v9fs-developer@lists.sourceforge.net;
 Sun, 26 Mar 2023 12:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kOr93YUtOmaqoawWdSt4Cadr3G4wAWVCS6sInmp2p2U=; b=NgD5fsd1Bv50jN+DaCF9OwrliB
 ItdR8feKKsmJ8TbtPghsQxluPVbDmsJ9UWGKDq1AjMvLLsZUA6mtmx3tPe/lE6Q7XXnzBBeTaYn0f
 64w0bMn/OClBlosX0pq2igaG0QDcOSk03ZJ28RbQqjQVBkPmdvH7Xcch4r1tdEeuM2r0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kOr93YUtOmaqoawWdSt4Cadr3G4wAWVCS6sInmp2p2U=; b=J
 ggBJtZvQq756104lQBLs1okJsKA+oPlOBk69jHYQ1/Ncv2sOmsiFAszx4YioUHY18hQEZCPxqRYrw
 TGUUxhP6pADQDxc3a5CF/beYnF0EMJlr6/1bO8QGG02/ygxIgNAoTmJOXh2v/t7woJ8z3Lay8d5W0
 NRFQCC1ADa4/A9gM=;
Received: from mail.grenfellbiz.com ([185.237.253.235])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgPf8-0002BN-Dv for v9fs-developer@lists.sourceforge.net;
 Sun, 26 Mar 2023 12:39:55 +0000
Received: by mail.grenfellbiz.com (Postfix, from userid 1001)
 id 0B210901FE0; Fri, 24 Mar 2023 10:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=grenfellbiz.com;
 s=mail; t=1679649067;
 bh=kOr93YUtOmaqoawWdSt4Cadr3G4wAWVCS6sInmp2p2U=;
 h=Date:From:To:Subject:From;
 b=XMDuuGvCPaWQ/KynOEvDPq+YS6IUYiWGD8bo47foTRhEgDYBs9NSZ5jzhUSjKasvy
 6l98op1lgbTv1UONvZrSYlTo1lNX7nFETUxj9UjDL90+GsP/bb1/LRadwCY3y8lKb5
 8t1mnASrgBqLP1bp3ctHlL04rDfzLn5boqez38Kid7aw/6MwfAUmIQqUMSVR0B6PrD
 bwAbEstV+brlVHGU60RQ1F7UCiewMObKVPyG17oE+MawYUVrUe9OEvcbb6G0qCOYlc
 2arGGVnz7oUu1sBKjnn2jAOlLPfu7pERtyf7kEBw8yo6uCzMolYbR0t2hfSTIIiMay
 KUk9iCylLd0bw==
Received: by mail.grenfellbiz.com for <v9fs-developer@lists.sourceforge.net>;
 Fri, 24 Mar 2023 09:10:49 GMT
Message-ID: <20230324084501-0.1.n.1l8t.0.9yfe07qpd1@grenfellbiz.com>
Date: Fri, 24 Mar 2023 09:10:49 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.grenfellbiz.com
MIME-Version: 1.0
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dobré ráno, Hledám firmy, které jsou ochotné uvažovat
    o změně dodavatele nabízejícího hliníkové tlakové odlitky. Garantujeme
    opakovatelnou kvalitu detailů s nízkou drsností povrchu a vysokou odolností
    proti korozi. 
 
 Content analysis details:   (1.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 MIXED_ES               Too many es are not es
X-Headers-End: 1pgPf8-0002BN-Dv
Subject: [V9fs-developer] =?utf-8?b?T2RsaXRreS1wb8WZw6FkZWs=?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Alan Beran via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Alan Beran <alan.beran@grenfellbiz.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9icsOpIHLDoW5vLAoKSGxlZMOhbSBmaXJteSwga3RlcsOpIGpzb3Ugb2Nob3Ruw6kgdXZhxb5v
dmF0IG8gem3Em27EmyBkb2RhdmF0ZWxlIG5hYsOtemVqw61jw61obyBobGluw61rb3bDqSB0bGFr
b3bDqSBvZGxpdGt5LgoKR2FyYW50dWplbWUgb3Bha292YXRlbG5vdSBrdmFsaXR1IGRldGFpbMWv
IHMgbsOtemtvdSBkcnNub3N0w60gcG92cmNodSBhIHZ5c29rb3Ugb2RvbG5vc3TDrSBwcm90aSBr
b3JvemkuCgpWw71yb2JreSBjaHLDoW7DrW1lIHBhc2l2YcSNbsOtbSBwb3ZsYWtlbSBuYSBiw6F6
aSBjaGVtaWUgU3VydGVjIDY1MCB2IHBsbsSbIGF1dG9tYXRpem92YW7DqW0gcHJvY2VzdSBwb25v
cnUuIERldGFpbHkgcHLDocWha292xJsgbGFrdWplbWUgbmEgcm9ib3RpY2vDqSBsaW5jZSBvZCBy
ZW5vbW92YW7DqSDFoXbDvWNhcnNrw6kgZmlybXkuCgpQb2t1ZCB2aWTDrXRlIHDFmcOtbGXFvml0
b3N0IGtlIHNwb2x1cHLDoWNpLCBrb250YWt0dWp0ZSBtxJsuCgpBbGFuIEJlcmFuCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
