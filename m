Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B542CA484
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 14:54:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk679-0003l4-Dy; Tue, 01 Dec 2020 13:54:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <toke@redhat.com>) id 1kk678-0003kx-8Y
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 13:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zlp63ghNuJN5qLaeR/Uw1vB64odm9laTGsc28DExrOk=; b=CX05+YmIrhZyD0XfmF1r3mTRUO
 fkVeIWOAMll4eaZ9Q7eDi5tjh8/l2oQkfI7PD7L+YOP7nw6J7XIxxurOCa4Phf0TFU2Eh5iH7hKSw
 oZAhR8xt47w5m7YEPBnS1V3wikxcuS51dVQre144K7bdYXM1VECrX4ISIZ7iuJMAiEaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Zlp63ghNuJN5qLaeR/Uw1vB64odm9laTGsc28DExrOk=; b=I
 m1jva80D2/EdaAupxrE+ONb3cpC6ExUkn/u7v0yqrFalVZq5apMj2P9SsHfaVMINWSvKDYOBJBRnf
 UEbui0Z1iriwMlAzJh0/dU6RhIJw6leb7lXYI/b8enexXPH9UUrDgbAGxHh9B89+z3yqXtM52wh/p
 FApDAJWUr/EMKdQk=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kk66x-009DU5-Vs
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 13:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606830866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Zlp63ghNuJN5qLaeR/Uw1vB64odm9laTGsc28DExrOk=;
 b=TKitFZxOpjn0CVKl+LaNEebqI4vkXrDxC5DHh3JhEWTk7Wgs6nORdbTrtNM0kxzldzw4ge
 s20m5PaRGCIS1Z/Vw5rNmUJmu0B1iPs/zsA++/32vZTqpORe89moZSkJ+w0QxxpzCR5tU7
 tMvKzYfUWxhhuMZNxiwiiEXV6AIHf+U=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-550-TIoxFsL2NYqTaPmUjt-Xdw-1; Tue, 01 Dec 2020 08:54:24 -0500
X-MC-Unique: TIoxFsL2NYqTaPmUjt-Xdw-1
Received: by mail-ed1-f69.google.com with SMTP id g8so1378312edm.7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Dec 2020 05:54:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zlp63ghNuJN5qLaeR/Uw1vB64odm9laTGsc28DExrOk=;
 b=RFbMDN4kSpfoT08yz60YBs/atJ0nxr8ka4byHNu0LFoOY6CyhyAEmVha6B881VC6/C
 UCUQZqKuwkWKOobyIPRTOnGytRQ+LXBR1FTl+GoOsZ1Gxt5i2YAYcQXJTYEX81WJnczl
 aA/UQwCIKIwI7Bs0LuTS3qcxYgsICbzoodm5/TcZGd7Zh3A3zaLav1SE2lMferqIhA41
 DHU0PFWIphirk1eulYKLuZ78Tu+6NSEIFbmtNvKnV0u/Blf27PpLYpPU/C8IB64XUdj8
 k3F/10JNVeFzgUyZKoz2E1e2lj8b7Mj8Skbc1HltYLLVO2ANtW0gdDKLc/f0eTuOonTZ
 DW9Q==
X-Gm-Message-State: AOAM533FQ9gGdnzQEUPvCYgx8HYBSWH74MtuNpTmJUNUzqDdm8WsAZ2u
 O5gmJLq4RscObdldsvU9IFrn8f6HbPMTGJYWiV/Sk+Vh85/vSVoBLvqK+We3nfO7W2FgD3c0G9r
 3Uagal9DJTAtu80TWotfLwsSKr9vIaWa9KOM=
X-Received: by 2002:a17:906:1481:: with SMTP id
 x1mr3191918ejc.186.1606830862965; 
 Tue, 01 Dec 2020 05:54:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyuPYcp9AoEFo8pa7arudlzcI2mpRWw2XyW8S7Jv9w9oVSNDVtZazhpCPXvJRRBMa8nz9Wc0w==
X-Received: by 2002:a17:906:1481:: with SMTP id
 x1mr3191900ejc.186.1606830862707; 
 Tue, 01 Dec 2020 05:54:22 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id p35sm890952edd.58.2020.12.01.05.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 05:54:22 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A70EE182EF0; Tue,  1 Dec 2020 14:54:20 +0100 (CET)
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue,  1 Dec 2020 14:54:09 +0100
Message-Id: <20201201135409.55510-1-toke@redhat.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kk66x-009DU5-Vs
Subject: [V9fs-developer] [PATCH] fs: 9p: add generic splice_read file
 operations
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
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhlIHY5ZnMgZmlsZSBvcGVyYXRpb25zIHdlcmUgbWlzc2luZyB0aGUgc3BsaWNlX3JlYWQgb3Bl
cmF0aW9ucywgd2hpY2gKYnJlYWtzIHNlbmRmaWxlKCkgb2YgZmlsZXMgb24gc3VjaCBhIGZpbGVz
eXN0ZW0uIEkgZGlzY292ZXJlZCB0aGlzIHdoaWxlCnRyeWluZyB0byBsb2FkIGFuIGVCUEYgcHJv
Z3JhbSB1c2luZyBpcHJvdXRlMiBpbnNpZGUgYSAndmlydG1lJyBlbnZpcm9ubWVudAp3aGljaCB1
c2VzIDlwZnMgZm9yIHRoZSB2aXJ0dWFsIGZpbGUgc3lzdGVtLiBpcHJvdXRlMiByZWxpZXMgb24g
c2VuZGZpbGUoKQp3aXRoIGFuIEFGX0FMRyBzb2NrZXQgdG8gaGFzaCBmaWxlcywgd2hpY2ggd2Fz
IGVycm9yaW5nIG91dCBpbiB0aGUgdmlydHVhbAplbnZpcm9ubWVudC4KClNpbmNlIGdlbmVyaWNf
ZmlsZV9zcGxpY2VfcmVhZCgpIHNlZW1zIHRvIGp1c3QgaW1wbGVtZW50IHNwbGljZV9yZWFkIGlu
CnRlcm1zIG9mIHRoZSByZWFkX2l0ZXIgb3BlcmF0aW9uLCBJIHNpbXBseSBhZGRlZCB0aGUgZ2Vu
ZXJpYyBpbXBsZW1lbnRhdGlvbgp0byB0aGUgZmlsZSBvcGVyYXRpb25zLCB3aGljaCBmaXhlZCB0
aGUgZXJyb3IgSSB3YXMgc2VlaW5nLiBBIHF1aWNrIGdyZXAKaW5kaWNhdGVzIHRoYXQgdGhpcyBp
cyB3aGF0IG1vc3Qgb3RoZXIgZmlsZSBzeXN0ZW1zIGRvIGFzIHdlbGwuCgpUaGUgb25seSBjYXZl
YXQgaXMgdGhhdCBteSB0ZXN0IGNhc2Ugd2FzIG9ubHkgaGl0dGluZyB0aGUKdjlmc19maWxlX29w
ZXJhdGlvbnNfZG90bCBpbXBsZW1lbnRhdGlvbi4gSSBhZGRlZCBpdCB0byB0aGUgb3RoZXIgZmls
ZQpvcGVyYXRpb25zIHN0cnVjdHMgYXMgd2VsbCBiZWNhdXNlIGl0IHNlZW1lZCBsaWtlIHRoZSBz
ZW5zaWJsZSB0aGluZyB0byBkbwpnaXZlbiB0aGF0IHRoZXkgYWxsIGltcGxlbWVudCByZWFkX2l0
ZXIsIGJ1dCB0aG9zZSBhcmUgb25seSBjb21waWxlIHRlc3RlZC4KClNpZ25lZC1vZmYtYnk6IFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgotLS0KIGZzLzlwL3Zmc19m
aWxlLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2ZzLzlwL3Zmc19maWxlLmMgYi9mcy85cC92ZnNfZmlsZS5jCmluZGV4IGIxNzdmZDNi
MWViMy4uMDEwMjZiNDcwMThjIDEwMDY0NAotLS0gYS9mcy85cC92ZnNfZmlsZS5jCisrKyBiL2Zz
LzlwL3Zmc19maWxlLmMKQEAgLTY1NSw2ICs2NTUsNyBAQCBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVy
YXRpb25zIHY5ZnNfY2FjaGVkX2ZpbGVfb3BlcmF0aW9ucyA9IHsKIAkucmVsZWFzZSA9IHY5ZnNf
ZGlyX3JlbGVhc2UsCiAJLmxvY2sgPSB2OWZzX2ZpbGVfbG9jaywKIAkubW1hcCA9IHY5ZnNfZmls
ZV9tbWFwLAorCS5zcGxpY2VfcmVhZCA9IGdlbmVyaWNfZmlsZV9zcGxpY2VfcmVhZCwKIAkuZnN5
bmMgPSB2OWZzX2ZpbGVfZnN5bmMsCiB9OwogCkBAIC02NjcsNiArNjY4LDcgQEAgY29uc3Qgc3Ry
dWN0IGZpbGVfb3BlcmF0aW9ucyB2OWZzX2NhY2hlZF9maWxlX29wZXJhdGlvbnNfZG90bCA9IHsK
IAkubG9jayA9IHY5ZnNfZmlsZV9sb2NrX2RvdGwsCiAJLmZsb2NrID0gdjlmc19maWxlX2Zsb2Nr
X2RvdGwsCiAJLm1tYXAgPSB2OWZzX2ZpbGVfbW1hcCwKKwkuc3BsaWNlX3JlYWQgPSBnZW5lcmlj
X2ZpbGVfc3BsaWNlX3JlYWQsCiAJLmZzeW5jID0gdjlmc19maWxlX2ZzeW5jX2RvdGwsCiB9Owog
CkBAIC02NzgsNiArNjgwLDcgQEAgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyB2OWZzX2Zp
bGVfb3BlcmF0aW9ucyA9IHsKIAkucmVsZWFzZSA9IHY5ZnNfZGlyX3JlbGVhc2UsCiAJLmxvY2sg
PSB2OWZzX2ZpbGVfbG9jaywKIAkubW1hcCA9IGdlbmVyaWNfZmlsZV9yZWFkb25seV9tbWFwLAor
CS5zcGxpY2VfcmVhZCA9IGdlbmVyaWNfZmlsZV9zcGxpY2VfcmVhZCwKIAkuZnN5bmMgPSB2OWZz
X2ZpbGVfZnN5bmMsCiB9OwogCkBAIC02OTAsNiArNjkzLDcgQEAgY29uc3Qgc3RydWN0IGZpbGVf
b3BlcmF0aW9ucyB2OWZzX2ZpbGVfb3BlcmF0aW9uc19kb3RsID0gewogCS5sb2NrID0gdjlmc19m
aWxlX2xvY2tfZG90bCwKIAkuZmxvY2sgPSB2OWZzX2ZpbGVfZmxvY2tfZG90bCwKIAkubW1hcCA9
IGdlbmVyaWNfZmlsZV9yZWFkb25seV9tbWFwLAorCS5zcGxpY2VfcmVhZCA9IGdlbmVyaWNfZmls
ZV9zcGxpY2VfcmVhZCwKIAkuZnN5bmMgPSB2OWZzX2ZpbGVfZnN5bmNfZG90bCwKIH07CiAKQEAg
LTcwMSw2ICs3MDUsNyBAQCBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHY5ZnNfbW1hcF9m
aWxlX29wZXJhdGlvbnMgPSB7CiAJLnJlbGVhc2UgPSB2OWZzX2Rpcl9yZWxlYXNlLAogCS5sb2Nr
ID0gdjlmc19maWxlX2xvY2ssCiAJLm1tYXAgPSB2OWZzX21tYXBfZmlsZV9tbWFwLAorCS5zcGxp
Y2VfcmVhZCA9IGdlbmVyaWNfZmlsZV9zcGxpY2VfcmVhZCwKIAkuZnN5bmMgPSB2OWZzX2ZpbGVf
ZnN5bmMsCiB9OwogCkBAIC03MTMsNSArNzE4LDYgQEAgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0
aW9ucyB2OWZzX21tYXBfZmlsZV9vcGVyYXRpb25zX2RvdGwgPSB7CiAJLmxvY2sgPSB2OWZzX2Zp
bGVfbG9ja19kb3RsLAogCS5mbG9jayA9IHY5ZnNfZmlsZV9mbG9ja19kb3RsLAogCS5tbWFwID0g
djlmc19tbWFwX2ZpbGVfbW1hcCwKKwkuc3BsaWNlX3JlYWQgPSBnZW5lcmljX2ZpbGVfc3BsaWNl
X3JlYWQsCiAJLmZzeW5jID0gdjlmc19maWxlX2ZzeW5jX2RvdGwsCiB9OwotLSAKMi4yOS4yCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
