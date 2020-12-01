Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0222E2CA757
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 16:45:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk7qJ-0000aE-Ng; Tue, 01 Dec 2020 15:45:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kk7qI-0000a7-56
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ZXOky5X68edX+ZKji8/7+h5ZsUJEEYYFZe9izZo8+w=; b=c5r3RBpGSp0tIkSPutsLHPR9kW
 ldiB+YTVl1noLKGIlRfv7NL82mKCxBjoInrryZeMvw9brtcZcIZVMgqIpQDP18TlCrCZOkV5+5DpB
 Q+V153i03yKWp09hGSr+EqDwAFddhKeRpciXaHD8P3+5z51XbeJIcOtjHNOeyu7fFA/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4ZXOky5X68edX+ZKji8/7+h5ZsUJEEYYFZe9izZo8+w=; b=eXCCM2/92tAEjcItxYpV+yh/nP
 pevZGTdtJVAmUyG70DIuHtD+G6TMEs+crDXWBliIxhiZD+iBsmpg+4y8Rvbk3X3n+IPQazPMwnw62
 AEVAWsIqWhqO/FzZfrp/cDeSMC1M8ry8z1dtWHi9eguZ9sJXg0ZcRS/7vQ6IGnUQVKDM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kk7q7-00EDjE-Ui
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:45:26 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 8C6B4C009; Tue,  1 Dec 2020 16:45:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1606837509; bh=4ZXOky5X68edX+ZKji8/7+h5ZsUJEEYYFZe9izZo8+w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V1K25wq1u1fSElfnlqOpXx/DR0/vSYT89xuRf2OGvW+Baxb7n394nVp0d6LCf8fiS
 ARMuITlvTDKM3wI24I76ntsZLoS6tYVHxJ4+PGhefksxvNmKLPdHN4TgNA+J1YIT9g
 1E6vRacn3RaVgUCdSsMKp917hjdn6IygiZIaKUEtA4Fr/gAZd1MUqxqg2oYOkXR7FY
 qCu0PtB/9qTZAVS/dpn1d/A1MYw3ymiB0YFsDbwjYBuro86F/11m4dqylGG8fQz2al
 ptoo0xPnWDz4E4BApccvuQ4B7PgQa8EweUpkzC1Hz4lGf1Ui9I9Sn36DysRVPUuBLt
 LU+yKLTrrW7lw==
From: Dominique Martinet <asmadeus@codewreck.org>
To: asmadeus@codewreck.org
Date: Tue,  1 Dec 2020 16:44:56 +0100
Message-Id: <1606837496-21717-1-git-send-email-asmadeus@codewreck.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <20201201151658.GA13180@nautica>
References: <20201201151658.GA13180@nautica>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kk7q7-00EDjE-Ui
Subject: [V9fs-developer] [PATCH] fs: 9p: add generic splice_write file
 operation
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhlIGRlZmF1bHQgc3BsaWNlIG9wZXJhdGlvbnMgZ290IHJlbW92ZWQgcmVjZW50bHksIGFkZCBp
dCBiYWNrIHRvIDlwCndpdGggaXRlcl9maWxlX3NwbGljZV93cml0ZSBsaWtlIG1hbnkgb3RoZXIg
ZmlsZXN5c3RlbXMgZG8uCgpGaXhlczogMzZlMmM3NDIxZjAyICgiZnM6IGRvbid0IGFsbG93IHNw
bGljZSByZWFkL3dyaXRlIHdpdGhvdXQgZXhwbGljaXQgb3BzIikKQ2M6IFRva2UgSMO4aWxhbmQt
SsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEb21pbmlxdWUgTWFy
dGluZXQgPGFzbWFkZXVzQGNvZGV3cmVjay5vcmc+Ci0tLQogZnMvOXAvdmZzX2ZpbGUuYyB8IDYg
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZnMv
OXAvdmZzX2ZpbGUuYyBiL2ZzLzlwL3Zmc19maWxlLmMKaW5kZXggMTQ1ZjZmODNhYTlhLi41Zjlj
MGM3OTZhMzcgMTAwNjQ0Ci0tLSBhL2ZzLzlwL3Zmc19maWxlLmMKKysrIGIvZnMvOXAvdmZzX2Zp
bGUuYwpAQCAtNjY4LDYgKzY2OCw3IEBAIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgdjlm
c19jYWNoZWRfZmlsZV9vcGVyYXRpb25zID0gewogCS5sb2NrID0gdjlmc19maWxlX2xvY2ssCiAJ
Lm1tYXAgPSB2OWZzX2ZpbGVfbW1hcCwKIAkuc3BsaWNlX3JlYWQgPSBnZW5lcmljX2ZpbGVfc3Bs
aWNlX3JlYWQsCisJLnNwbGljZV93cml0ZSA9IGl0ZXJfZmlsZV9zcGxpY2Vfd3JpdGUsCiAJLmZz
eW5jID0gdjlmc19maWxlX2ZzeW5jLAogfTsKIApAQCAtNjgxLDYgKzY4Miw3IEBAIGNvbnN0IHN0
cnVjdCBmaWxlX29wZXJhdGlvbnMgdjlmc19jYWNoZWRfZmlsZV9vcGVyYXRpb25zX2RvdGwgPSB7
CiAJLmZsb2NrID0gdjlmc19maWxlX2Zsb2NrX2RvdGwsCiAJLm1tYXAgPSB2OWZzX2ZpbGVfbW1h
cCwKIAkuc3BsaWNlX3JlYWQgPSBnZW5lcmljX2ZpbGVfc3BsaWNlX3JlYWQsCisJLnNwbGljZV93
cml0ZSA9IGl0ZXJfZmlsZV9zcGxpY2Vfd3JpdGUsCiAJLmZzeW5jID0gdjlmc19maWxlX2ZzeW5j
X2RvdGwsCiB9OwogCkBAIC02OTMsNiArNjk1LDcgQEAgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0
aW9ucyB2OWZzX2ZpbGVfb3BlcmF0aW9ucyA9IHsKIAkubG9jayA9IHY5ZnNfZmlsZV9sb2NrLAog
CS5tbWFwID0gZ2VuZXJpY19maWxlX3JlYWRvbmx5X21tYXAsCiAJLnNwbGljZV9yZWFkID0gZ2Vu
ZXJpY19maWxlX3NwbGljZV9yZWFkLAorCS5zcGxpY2Vfd3JpdGUgPSBpdGVyX2ZpbGVfc3BsaWNl
X3dyaXRlLAogCS5mc3luYyA9IHY5ZnNfZmlsZV9mc3luYywKIH07CiAKQEAgLTcwNiw2ICs3MDks
NyBAQCBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHY5ZnNfZmlsZV9vcGVyYXRpb25zX2Rv
dGwgPSB7CiAJLmZsb2NrID0gdjlmc19maWxlX2Zsb2NrX2RvdGwsCiAJLm1tYXAgPSBnZW5lcmlj
X2ZpbGVfcmVhZG9ubHlfbW1hcCwKIAkuc3BsaWNlX3JlYWQgPSBnZW5lcmljX2ZpbGVfc3BsaWNl
X3JlYWQsCisJLnNwbGljZV93cml0ZSA9IGl0ZXJfZmlsZV9zcGxpY2Vfd3JpdGUsCiAJLmZzeW5j
ID0gdjlmc19maWxlX2ZzeW5jX2RvdGwsCiB9OwogCkBAIC03MTgsNiArNzIyLDcgQEAgY29uc3Qg
c3RydWN0IGZpbGVfb3BlcmF0aW9ucyB2OWZzX21tYXBfZmlsZV9vcGVyYXRpb25zID0gewogCS5s
b2NrID0gdjlmc19maWxlX2xvY2ssCiAJLm1tYXAgPSB2OWZzX21tYXBfZmlsZV9tbWFwLAogCS5z
cGxpY2VfcmVhZCA9IGdlbmVyaWNfZmlsZV9zcGxpY2VfcmVhZCwKKwkuc3BsaWNlX3dyaXRlID0g
aXRlcl9maWxlX3NwbGljZV93cml0ZSwKIAkuZnN5bmMgPSB2OWZzX2ZpbGVfZnN5bmMsCiB9Owog
CkBAIC03MzEsNSArNzM2LDYgQEAgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyB2OWZzX21t
YXBfZmlsZV9vcGVyYXRpb25zX2RvdGwgPSB7CiAJLmZsb2NrID0gdjlmc19maWxlX2Zsb2NrX2Rv
dGwsCiAJLm1tYXAgPSB2OWZzX21tYXBfZmlsZV9tbWFwLAogCS5zcGxpY2VfcmVhZCA9IGdlbmVy
aWNfZmlsZV9zcGxpY2VfcmVhZCwKKwkuc3BsaWNlX3dyaXRlID0gaXRlcl9maWxlX3NwbGljZV93
cml0ZSwKIAkuZnN5bmMgPSB2OWZzX2ZpbGVfZnN5bmNfZG90bCwKIH07Ci0tIAoyLjI4LjAKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Bl
cgo=
