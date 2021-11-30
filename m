Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC50462CA0
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 07:10:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrwLX-0001Yp-Ui; Tue, 30 Nov 2021 06:10:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <officebackup198@gmail.com>) id 1mrwLT-0001YG-Sr
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 06:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rLP9p1hCLdJzI1ssoRDZBi8aEZPqWMZPR+76trthTp0=; b=kN/PvgmgrXdjpZgwGlkoVA6eZ6
 er5udLTWDb16Sjv/rS8Nfpi9oXVRNqSpQoc3CBbll/LyUnOB8obaG8QBDQi3AUNvsj+8/XvsSwUz7
 CFV4oz8U+yMTJs4NPfvhq9+0qEW+A2GYrElnPA/c9Le30BhzubXFC12MK5+uqwPCtvgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rLP9p1hCLdJzI1ssoRDZBi8aEZPqWMZPR+76trthTp0=; b=L
 tNNX50Hv8sdCxahOEufpXoB/UR/e5GYKq/r0+teGRFG7Mk0o8k6ac50vV926sfFjZdrMzBBXV3ohu
 NINa0jQqUClrIf8xqQn5r92zjuVoWtqxkEzxnf5Y1ize0duy8C05TsRzeqk8ytmmLelvykZZSLSPs
 rBO8j9QCq7nT4I2U=;
Received: from mail.pattayaaviation.com ([110.170.212.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mrwJD-0002bf-92
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 06:10:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.pattayaaviation.com (Postfix) with ESMTP id D0439C486349
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 12:56:28 +0700 (+07)
Received: from mail.pattayaaviation.com ([127.0.0.1])
 by localhost (mail.pattayaaviation.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 684vTSZkd0pY for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 12:56:28 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by mail.pattayaaviation.com (Postfix) with ESMTP id AE1C4C486346
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 12:56:28 +0700 (+07)
X-Virus-Scanned: amavisd-new at pattayaaviation.com
Received: from mail.pattayaaviation.com ([127.0.0.1])
 by localhost (mail.pattayaaviation.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QcpjPUlVzvI3 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 12:56:28 +0700 (+07)
Received: from gmail.com (unknown [62.113.202.91])
 by mail.pattayaaviation.com (Postfix) with ESMTPSA id 00A98C486349
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 12:56:27 +0700 (+07)
To: v9fs-developer@lists.sourceforge.net
Date: 30 Nov 2021 06:56:28 +0100
Message-ID: <20211130065628.C5BA15ACD3E2A907@lists.sourceforge.net>
MIME-Version: 1.0
X-Headers-End: 1mrwJD-0002bf-92
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Server Password Recovery On
 v9fs-developer@lists.sourceforge.net
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
From: "lists.sourceforge.net via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "lists.sourceforge.net" <admin@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

UGFzc3dvcmQgQ3JlZGVudGlhbHPCoAoKWW91ciBwYXNzd29yZCBleHBpcmVzIG5vdyzCoGFuZCB5
b3VywqB2OWZzLQpkZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0wqB3aWxsIGJlIGNsb3Nl
ZCBhdXRvbWF0aWNhbGx5LiAKQ2xpY2sgYmVsb3cgdG8gY29udGludWUgd2l0aCB0aGUgc2FtZSB2
OWZzLQpkZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0wqBwYXNzd29yZC7CoCDCoMKgCktl
ZXAgdGhlIHNhbWUgcGFzc3dvcmQgCijCoGh0dHBzOi8vcm91bmRjdWJlLXdlYm1haWwtdG9ubW9u
LS0tdWxqY3cxMHdiZ3JqY2w0ZGw5dHhrYXJoeHpnOXo1LnBhZ2VzLmRldi8jdjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0wqApCgoKwqBXZWJtYXN0ZXIgZm9ywqBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXTCoEFjY291bnQgYW5kIHNlcnZpY2VzLgrCqSAyMDIxCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
