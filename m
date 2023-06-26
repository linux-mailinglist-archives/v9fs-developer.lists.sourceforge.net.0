Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EC673D8DB
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Jun 2023 09:51:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qDh0c-0006PI-0q;
	Mon, 26 Jun 2023 07:51:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leos.sladek@paretdee.com>) id 1qDh0a-0006PC-HB
 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Jun 2023 07:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YtPWhpqttWkror/OXW+RT7d5qvBhyF8jxaFrqRhKfz8=; b=Su5iJRxd8f1PJm17bnUDC5H+w9
 J3+H99U8hJfQIpwodzKPu8kUeAImwSirJUYkqDpjTEpHZjZRU7u8yYtU48jxu4T9mX2UjThDAYKhD
 08htIOPT/Ix8axDPvqVHr15Jeny6KH/VL52Y9aE0pJ8qnG0tK7FFiHr7EN7THgOrfS68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YtPWhpqttWkror/OXW+RT7d5qvBhyF8jxaFrqRhKfz8=; b=T
 031d4d0er+eWAbI5mGPnlubMKGj/seZUC4MqgYsmMKIhJFl0Jm2Ei0dDv2ZcKv6dmpZNOKtMvOYWz
 XOIcRPRi7MzZrMtKnMAO6ORXgH9/D4WfFChl/Ue2CnBEexKrLqX3DwEiBwPTznEdm9kabNHw1I7vq
 nFsJUex6U6yNBsWk=;
Received: from mail.paretdee.com ([141.95.17.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qDh0a-00EqFN-6b for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Jun 2023 07:51:36 +0000
Received: by mail.paretdee.com (Postfix, from userid 1002)
 id D85C9A251E; Mon, 26 Jun 2023 07:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=paretdee.com; s=mail;
 t=1687765889; bh=YtPWhpqttWkror/OXW+RT7d5qvBhyF8jxaFrqRhKfz8=;
 h=Date:From:To:Subject:From;
 b=AMK3r9ioVwQbGDtQTz9m56Ha/qVWOs8Q4UO5ZQPxJ6wjXNHhLtd3HDCU5rXWVR7PX
 AzezwD6ZBicdsEvs4Upz2cQwU/ewG6xs2ukMli/uGCTAj+OYJkDytaRE8Xg0mmw72E
 98qacHZFY+uA0MLEj6qRTl/WNdwAP5xmvTh3hEytybMdbHSjN32ClarAR9f87HXfXw
 KDt1NpHLKebxh+O3EnfgnL4oECe8/KwMY9BDXiu21Mu4mO8Y5cHDUX8B+wsZAtE7N5
 J79y2EZz8teY/+iEAzp18u/ExmNeHXiog+Q97LcTVn0ZOkRIV9VHdeF39r6hj1CJg0
 rT5V8qAhAD7mw==
Received: by paretdee.com for <v9fs-developer@lists.sourceforge.net>;
 Mon, 26 Jun 2023 07:51:27 GMT
Message-ID: <20230626062757-0.1.6x.guce.0.z8o3b6g261@paretdee.com>
Date: Mon, 26 Jun 2023 07:51:27 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.paretdee.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dobrý den, obracím se na Vás jménem dlouholetého výrobce
    fotovoltaických rozvodnic určených pro soukromé i průmyslové použití.
    Dodáváme fotovoltaické rozvodnice na zakázku a jsme schopni realizovat
    i ty nejnáročnější požadavky instalačních firem, velkoobchodů a
   distributorů. 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [141.95.17.174 listed in wl.mailspike.net]
X-Headers-End: 1qDh0a-00EqFN-6b
Subject: [V9fs-developer] =?utf-8?q?Fotovoltaick=C3=A9_rozvodnice?=
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
From: Leos Sladek via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Leos Sladek <leos.sladek@paretdee.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9icsO9IGRlbiwKCm9icmFjw61tIHNlIG5hIFbDoXMgam3DqW5lbSBkbG91aG9sZXTDqWhvIHbD
vXJvYmNlIGZvdG92b2x0YWlja8O9Y2ggcm96dm9kbmljIHVyxI1lbsO9Y2ggcHJvCnNvdWtyb23D
qSBpIHByxa9teXNsb3bDqSBwb3XFvml0w60uCgpEb2TDoXbDoW1lIGZvdG92b2x0YWlja8OpIHJv
enZvZG5pY2UgbmEgemFrw6F6a3UgYSBqc21lIHNjaG9wbmkgcmVhbGl6b3ZhdCBpIHR5IG5lam7D
oXJvxI1uxJtqxaHDrQpwb8W+YWRhdmt5IGluc3RhbGHEjW7DrWNoIGZpcmVtLCB2ZWxrb29iY2hv
ZMWvIGEgZGlzdHJpYnV0b3LFry4KClZ5dcW+w612w6FtZSBuZWprdmFsaXRuxJtqxaHDrSBrb21w
b25lbnR5IGEgbWF0ZXJpw6FseSwgxI3DrW3FviBkb3NhaHVqZW1lIHZ5xaHFocOtIG9kb2xub3N0
LCBzdGFiaWxpdHUKcHJvdm96dSBhIG9jaHJhbnUgcHJvdGkgdm9kxJssIHZsa3UsIHByYWNodSBh
IG7DoXJhesWvbS4KClYgbmHFoWVtIHNvcnRpbWVudHUganNvdSB0YWvDqSBvbWV6b3ZhxI1lIHDF
mWVwxJt0w60gQUMvREMsIGt0ZXLDqSB6YWppxaHFpXVqw60gb2NocmFudQpmb3Rvdm9sdGFpY2vD
vWNoIG5hcMOhamVjw61jaCBpbnN0YWxhY8OtIHDFmWVkIG5lZ2F0aXZuw61taSBlZmVrdHkgcMWZ
ZXDEm3TDrSBhIGNocsOhbsOtIHphxZnDrXplbsOtIHDFmWVkCmVmZWt0eSBwxa9zb2JlbsOtIHDF
mWVwxJt0w60gYSBibGVza292w71jaCBwcm91ZMWvLgoKQ2hjZXRlIHNpIHZ5emtvdcWhZXQgbmHF
oWUgxZllxaFlbsOtPwoKClMgcG96ZHJhdmVtCkxlb3MgU2xhZGVrCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
