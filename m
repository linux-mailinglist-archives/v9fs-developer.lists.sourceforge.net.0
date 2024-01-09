Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E6682822F
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Jan 2024 09:42:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rN7gW-00031s-9P;
	Tue, 09 Jan 2024 08:42:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stanislav.kovac@kasaioranje.com>) id 1rN7gV-00031m-3h
 for v9fs-developer@lists.sourceforge.net;
 Tue, 09 Jan 2024 08:42:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M9k2lPRvhlCI3aV1pBXwlT5gBaDEgRBSrVeWasDDZ3M=; b=Gt2+2oljh395t2PdiBs/TFvo2T
 z2Ufg0lYEYsJt5lAKCS5FJBVu4tjdskNxvZ2g8JoxGe7ZSnoUIIHJbH6r+wjFAe0yJx5VRkIrD5Vd
 EyGruOviROuWmftiFGzf/s0HSpHdiTJCxXMTC1uI/m2dieLJ+jb11apO/SXN1RtTTJhs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M9k2lPRvhlCI3aV1pBXwlT5gBaDEgRBSrVeWasDDZ3M=; b=k
 I1Pr0y+Ysr9+oYsjxMGEBUGy8hB27c+4SM7M/4lZaCLrNsihOcKBZ2moyHIsuaP3HUY7jraac22kc
 nd9lZx0XQMPPcaq7ZVngM1cluAVZyL0zVodLJQ+7u/8CSX496L7jTZyn6ADq2sXTPxH6zHAsBeI9X
 Xp4U3vF9ScEl4aDo=;
Received: from mail.kasaioranje.com ([135.125.203.239])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rN7gQ-000399-N9 for v9fs-developer@lists.sourceforge.net;
 Tue, 09 Jan 2024 08:42:07 +0000
Received: by mail.kasaioranje.com (Postfix, from userid 1002)
 id 28197A325E; Tue,  9 Jan 2024 08:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kasaioranje.com;
 s=mail; t=1704789661;
 bh=M9k2lPRvhlCI3aV1pBXwlT5gBaDEgRBSrVeWasDDZ3M=;
 h=Date:From:To:Subject:From;
 b=YF3btFLXIe9qoQRGKuIJ1O/4kumlgHds41YnlYFyIfimhY8ran/x7ZFaWLCrDI55I
 SFtpgd8db5KI1zSYpY3RKZM+a0PALnJCUix0LIje0lxi5VwuqM44TB9wCeioOEi1s7
 s6gmFAk/sdZBM/0SQtK6lQw6ntZGaQ42BOEcuYDi0yYwvP/Oz8598N3zDKkPd9RPMK
 6K6Qyo0Mchf0Rvmjgb4YGTNfhUQ6HWMzjh5yJpCNEpup4WNcuVGlCII/PzZDNuDKfx
 27hYesxaZ99Smtp0sm9y/xVvnCLu36u5f4G8PDdyIHXUytwOkx8r9Q14a7m8vV13DZ
 Io4wlcufsJ+eA==
Received: by mail.kasaioranje.com for <v9fs-developer@lists.sourceforge.net>;
 Tue,  9 Jan 2024 08:40:47 GMT
Message-ID: <20240109074500-0.1.b7.1336i.0.dsbol2h6c6@kasaioranje.com>
Date: Tue,  9 Jan 2024 08:40:47 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.kasaioranje.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, We are interested in collaborating with your company.
 I am writing to you because we supply high-quality metal parts for sports
 cars to wholesalers and distribution networks worldwide, which could enrich
 your offerings. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rN7gQ-000399-N9
Subject: [V9fs-developer] New parts in stock/offering
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
From: =?UTF-8?Q? Stanislav_Kov=C3=A1=C4=8D ?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?Q? Stanislav_Kov=C3=A1=C4=8D ?=
 <stanislav.kovac@kasaioranje.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpXZSBhcmUgaW50ZXJlc3RlZCBpbiBjb2xsYWJvcmF0aW5nIHdpdGggeW91ciBjb21wYW55
LgoKSSBhbSB3cml0aW5nIHRvIHlvdSBiZWNhdXNlIHdlIHN1cHBseSBoaWdoLXF1YWxpdHkgbWV0
YWwgcGFydHMgZm9yIHNwb3J0cyBjYXJzIHRvIHdob2xlc2FsZXJzIGFuZCBkaXN0cmlidXRpb24g
bmV0d29ya3Mgd29ybGR3aWRlLCB3aGljaCBjb3VsZCBlbnJpY2ggeW91ciBvZmZlcmluZ3MuCgpX
aGV0aGVyIHlvdSBuZWVkIGVuZ2luZSBjb21wb25lbnRzLCBzdXNwZW5zaW9uIHN5c3RlbXMsIGJv
ZHkgbW9kaWZpY2F0aW9uIGtpdHMsIG9yIGludGVyaW9yIGVuaGFuY2VtZW50cywgd2Ugb2ZmZXIg
YSB3aWRlIHJhbmdlIG9mIHByb2R1Y3RzIHRoYXQgY2FuIG1lZXQgeW91ciBjdXN0b21lcnMnIG5l
ZWRzLgoKTGV0IHVzIGtub3cgaWYgeW91J3JlIGludGVyZXN0ZWQgaW4gYWRkaXRpb25hbCBwcm9m
aXQgd2hpbGUgbWFpbnRhaW5pbmcgY29tcGV0aXRpdmUgcHJpY2VzIGFuZCBhdHRyYWN0aXZlIG1h
cmdpbnMuCgoKQmVzdCByZWdhcmRzClN0YW5pc2xhdiBLb3bDocSNCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
