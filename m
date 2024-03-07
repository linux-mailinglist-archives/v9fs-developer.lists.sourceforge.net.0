Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C541875787
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Mar 2024 20:51:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1riJmI-0006JH-Gb;
	Thu, 07 Mar 2024 19:51:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <patrick.p@mail.smcegy.com>) id 1riJmH-0006JB-VR
 for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Mar 2024 19:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FAsDsfGhRgHLhiPEp5G/wiEHNNbE0kr6ZZQI+0qFbSs=; b=hdYB2Pu6bFvaxAD3HFXOdeW1a7
 rFTzrpUVi1xkvG8iwEIhVtPaNo7IuJhxzQ6sPGBHnsyVPmfSKqS6EdrQcoQM3BLkcKS3QUftY2Os7
 HqNZEP2Q9n/K8y0PtA+nPhrowxCoFFyLXsN5/cYUHzcuU3LSaTrwZkHuPehW/wUN/8iY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FAsDsfGhRgHLhiPEp5G/wiEHNNbE0kr6ZZQI+0qFbSs=; b=h
 SkeGsW91uJDp7HVdSSTirOzhJnwuprk/E11sCU+Wp04sMUJxnRitR+YaFOUNKK8OEzdNu21V0VsuU
 1K0omC5Y/nb79/29tqR8U8SBl+yPmVI4ulUSliZI2QCOOBgHuhT5+VhRuzgRDgEyDRuE5ptuupUna
 vIbAbXOFgck+yGCo=;
Received: from [41.33.78.12] (helo=mail.smcegy.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1riJmB-00054X-FS for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Mar 2024 19:51:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.smcegy.com (Postfix) with ESMTP id E4C7032AD64
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  7 Mar 2024 19:50:09 +0000 (UTC)
Received: from mail.smcegy.com ([127.0.0.1])
 by localhost (mail.smcegy.com [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 1LeOQR7u1D7X for <v9fs-developer@lists.sourceforge.net>;
 Thu,  7 Mar 2024 19:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.smcegy.com (Postfix) with ESMTP id 78E0A328476
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  7 Mar 2024 19:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.smcegy.com 78E0A328476
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mail.smcegy.com;
 s=7119B320-7438-11EE-B128-5F92ED995318; t=1709840331;
 bh=FAsDsfGhRgHLhiPEp5G/wiEHNNbE0kr6ZZQI+0qFbSs=;
 h=From:To:Date:Message-ID:MIME-Version;
 b=l8aTUDAvmeS/dcMuSIPvsIkKDVsZIVahaBG4wkTxtJRjIQqOq9RH9jJzwezIp6Qi5
 QkR/xa3WIg7m0SAVc6vmTycTi+PGrDY4H3hJzrl4s6tsQ3T3blFW3Q0n1TcP45vuXA
 RoP1Ep1S8ip5WALuczp0gHBuyHyNxubg/xNyfkblMlR1y6NfAOMWXELBm0oV0/0tqf
 cPlCiZpUA3vesth7SVpZiTvQ70oeXjOl7Dy3pH9bLwCKiry7BgiUTXfbv0kLg6ck1t
 rgr5M2VS1UGz9zmQaPDjGS87UYnqyKTX07pccDTj4GmwchQ0m44iWIEZNpOTBySXsG
 4BHo8swlQkmvA==
X-Virus-Scanned: amavis at mail.smcegy.com
Received: from mail.smcegy.com ([127.0.0.1])
 by localhost (mail.smcegy.com [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 77RbHbTyhBYl for <v9fs-developer@lists.sourceforge.net>;
 Thu,  7 Mar 2024 19:38:51 +0000 (UTC)
Received: from mail.smcegy.com (unknown [192.168.41.254])
 by mail.smcegy.com (Postfix) with ESMTP id 8CF5C28DAA0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  7 Mar 2024 19:28:10 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
Date: 07 Mar 2024 20:28:08 +0100
Message-ID: <20240307202808.14501FF4183FD90B@mail.smcegy.com>
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Bonjour, Je me présente Monsieur Philippe MARTINEZ, je vous
    contacte suite à un don de 1 525 000 € que je veux vous offrir, car mes
    jours sont comptés. Pour plus de renseignements, je vous prie d [...] 
 
 Content analysis details:   (4.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [41.33.78.12 listed in wl.mailspike.net]
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.0 HK_NAME_MR_MRS         No description available.
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1riJmB-00054X-FS
Subject: Re: [V9fs-developer] Bonjour
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
From: Mr Philippe via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: phillippemartinez@outlook.com
Cc: Mr Philippe <patrick.p@mail.smcegy.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Qm9uam91ciwKSmUgbWUgcHLDqXNlbnRlIE1vbnNpZXVyIFBoaWxpcHBlIE1BUlRJTkVaLCBqZSB2
b3VzIGNvbnRhY3RlIHN1aXRlIArDoCB1biBkb24gZGUgMSA1MjUgMDAwIOKCrCBxdWUgamUgdmV1
eCB2b3VzIG9mZnJpciwgY2FyIG1lcyBqb3VycyAKc29udCBjb21wdMOpcy4gUG91ciBwbHVzIGRl
IHJlbnNlaWduZW1lbnRzLCBqZSB2b3VzIHByaWUgZGUgYmllbiAKdm91bG9pciBtZSBjb250YWN0
ZXIgw6AgbW9uIGFkcmVzc2UgY291cnJpZWwgcGVyc29ubmVsOiAKcGhpbGxpcHBlbWFydGluZXpA
b3V0bG9vay5jb20KUXVlIGxlIFNlaWduZXVyIERpZXUgY3LDqWF0ZXVyIGR1IGNpZWwgZXQgZGUg
bGEgdGVycmUgZXhhdWNlIHZvcyAKcHJpw6hyZXMsIEFtZW4uCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
