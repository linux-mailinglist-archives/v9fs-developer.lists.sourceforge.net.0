Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36515344B8A
	for <lists+v9fs-developer@lfdr.de>; Mon, 22 Mar 2021 17:36:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lONXP-0000zj-7f; Mon, 22 Mar 2021 16:36:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <idrarig.alocin@gmail.com>) id 1lONXN-0000zc-N0
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Mar 2021 16:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=msEingyIO+R4Dkm+jGwQJPMmYHA02n3ldnajB8yDtqQ=; b=Ppcf6P7I1wENT3DwblQzTKCY+L
 WuZNbxvzzrGQmmYfJqKo5BhYklyzdxGbLeKm1erXc+xOt1QjuAWjF5YBJVB5jLmWcIuSW8sEASLrD
 hqMXrl/NJahRTGA2spvuyRs/xs4t7vqRsdKRAzS9PchWRkRXUZZm45NFohjIwVurjzuM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=msEingyIO+R4Dkm+jGwQJPMmYHA02n3ldnajB8yDtqQ=; b=S
 rJYWdfymFjN3gwjMqyY3xhBo4ifRiTjsHo//0L83ZDnZdhyomVrMt71salGMpkz/BkW613RDjdEFc
 6i/lt62uS8jP+AqltrQwLSYqvmPVPEqc9Ojz6CTqCmMPkQBgN1BuFNfCVSSckulXM/tYqW9rmWuon
 WpKSkudGWRnybaVw=;
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lONXG-00EzRC-HX
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Mar 2021 16:36:17 +0000
Received: by mail-wr1-f54.google.com with SMTP id v4so17821988wrp.13
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 22 Mar 2021 09:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=msEingyIO+R4Dkm+jGwQJPMmYHA02n3ldnajB8yDtqQ=;
 b=NELhWZ53MXv39Rq17KtIS/qW5ZfmFhsD4qTBZdqQifYJQo4ZEzJTJoy/zwO7y+zIWW
 dAviJjrH1sfIaSNhgBe4bHaEDkQgNjGKYQX4MdDZJkfaJu9lh8dtkDW5EnmF14xR1UL3
 owPv8aEzioP2kwqJvqMxHs38LMFPSK3Pki8c4lQLxqSCbr66vFCTdOPVHh5RinGx7H7F
 3pRk5NCfZ3SwRxxtxRGhiuna2x1Fv4ebMitXa5iyTGAAlgfGm/FZ/eBk3V1k1NlQaOdI
 +uTxRsgHBd2VymxFEp7Zm4i00VPl3q1uBmgaEbk4GOvbt02BHxlFMu1JWKRrukZxd8tG
 cRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=msEingyIO+R4Dkm+jGwQJPMmYHA02n3ldnajB8yDtqQ=;
 b=BYZlXo3TKoNUp44l0r39IZNRLlmPNea8OWfyTZ6gQCUM02RoWHrKOxhCG3XjGrrqDr
 D9ZBWWh/bid6PRbSwdI4/0/AolxIYQmlrH8cvECEdhJRnLnld4nkuQcaunpGbhZfCm06
 hIooTd13zAOQq//MxlFjQEGSSbyRTv7HsOtiKL7I7MvOl7nCiiM0ZihZ2F9ism8IV07W
 oOglWMEetj+TDggU1/GauSYm0cTnGMGUrWWMqZmiBt77+RI/1zFHjRy9BqIZVyNiNhur
 U1c0BwLzkFMSFjKy5vjGISLb2XhV2zMtLZrh33iSR9XUoPOHz4N2rAAeUkQGOIq6ookI
 c7xA==
X-Gm-Message-State: AOAM531f8c1CrPI8BO8E4hfQrTgTJdtn94vRusKhtgunhIVG0R5JdzEb
 dkDxSc/HrEZV6azHjAUz8ZtT6tOiJRXUzg==
X-Google-Smtp-Source: ABdhPJxpOXsKc61ZhRSOHxxWafjIVVjCkURGnQVUXzDESmpXfbdpkohRsEH6P/X4xlFb11EnZn0dew==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr438783wrk.146.1616430964135; 
 Mon, 22 Mar 2021 09:36:04 -0700 (PDT)
Received: from raspberrypi ([37.228.246.183])
 by smtp.gmail.com with ESMTPSA id v14sm19612180wrd.48.2021.03.22.09.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 09:36:03 -0700 (PDT)
From: Nicola Girardi <idrarig.alocin@gmail.com>
X-Google-Original-From: Nicola Girardi <nicolagi@sdf.org>
Received: by raspberrypi (Postfix, from userid 1001)
 id 434845C06B; Mon, 22 Mar 2021 16:36:03 +0000 (GMT)
To: v9fs-developer@lists.sourceforge.net
Date: Mon, 22 Mar 2021 16:35:53 +0000
Message-Id: <20210322163553.19888-1-nicolagi@sdf.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (idrarig.alocin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lONXG-00EzRC-HX
Subject: [V9fs-developer] [PATCH] fs/9p: if O_APPEND, seek to EOF on write,
 not open
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

UXVvdGluZyB0aGUgUE9TSVggc3RhbmRhcmQ6wrkKCglJZiB0aGUgT19BUFBFTkQgZmxhZyBvZiB0
aGUgZmlsZSBzdGF0dXMgZmxhZ3MgaXMgc2V0LCB0aGUgZmlsZQoJb2Zmc2V0IHNoYWxsIGJlIHNl
dCB0byB0aGUgZW5kIG9mIHRoZSBmaWxlIHByaW9yIHRvIGVhY2ggd3JpdGUgYW5kCglubyBpbnRl
cnZlbmluZyBmaWxlIG1vZGlmaWNhdGlvbiBvcGVyYXRpb24gc2hhbGwgb2NjdXIgYmV0d2VlbgoJ
Y2hhbmdpbmcgdGhlIGZpbGUgb2Zmc2V0IGFuZCB0aGUgd3JpdGUgb3BlcmF0aW9uLgoKUHJldmlv
dXNseSwgdGhlIHNlZWsgdG8gRU9GIHdhcyBvbmx5IGRvbmUgb24gb3BlbiBpbnN0ZWFkLgoKwrkg
aHR0cHM6Ly9wdWJzLm9wZW5ncm91cC5vcmcvb25saW5lcHVicy85Njk5OTE5Nzk5L2Z1bmN0aW9u
cy93cml0ZS5odG1sCi0tLQoKSSBub3RpY2VkIHRoZSBhYm92ZSBtaW5vciBkZXZpYXRpb24gZnJv
bSBQT1NJWCB3aGlsZSBydW5uaW5nIGEgdGVzdGVyCnRoYXQgbG9va3MgZm9yIGRpZmZlcmVuY2Vz
IGJldHdlZW4gZXh0NCBhbmQgYSBmcyBvZiBtaW5lLCBtb3VudGVkCnVzaW5nIHY5ZnMuIEkgd3Jv
dGUgYSBzbWFsbCBwcm9ncmFtIHRvIHJlcHJvZHVjZSB0aGUgcHJvYmxlbSBhbmQKdmFsaWRhdGUg
dGhlIGZpeDoKaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL25pY29sYWdpL2ZzZGlm
Zi9tYXN0ZXIvYy9yZXByby1yZWFkLWFwcGVuZC5jLgoKUFM6IEkgdGhpbmsgaXQncyBpcnJlbGV2
YW50LCBidXQsIGZvciBjb21wbGV0ZW5lc3MsIHRoZSBwcm9ncmFtIGRvaW5nCnJhbmRvbWl6ZWQg
ZGlmZmVyZW50aWFsIHRlc3RpbmcgaXMgaHR0cHM6Ly9naXRodWIuY29tL25pY29sYWdpL2ZzZGlm
ZgphbmQgdGhlIGZzIChtb3VudGVkIHZpYSB2OWZzKSBpcyBodHRwczovL2dpdGh1Yi5jb20vbmlj
b2xhZ2kvbXVzY2xlLgoKVGhhbmsgeW91LAoKTmljb2xhCgogZnMvOXAvdmZzX2ZpbGUuYyB8IDUg
KystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZnMvOXAvdmZzX2ZpbGUuYyBiL2ZzLzlwL3Zmc19maWxlLmMKaW5kZXggYmU1
NzY4OTQ5Y2IxLi44ZTlkYTNhYmQ0OTggMTAwNjQ0Ci0tLSBhL2ZzLzlwL3Zmc19maWxlLmMKKysr
IGIvZnMvOXAvdmZzX2ZpbGUuYwpAQCAtNjgsOSArNjgsNiBAQCBpbnQgdjlmc19maWxlX29wZW4o
c3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCiAJCQlwOV9jbGllbnRfY2x1
bmsoZmlkKTsKIAkJCXJldHVybiBlcnI7CiAJCX0KLQkJaWYgKChmaWxlLT5mX2ZsYWdzICYgT19B
UFBFTkQpICYmCi0JCQkoIXY5ZnNfcHJvdG9fZG90dSh2OXNlcykgJiYgIXY5ZnNfcHJvdG9fZG90
bCh2OXNlcykpKQotCQkJZ2VuZXJpY19maWxlX2xsc2VlayhmaWxlLCAwLCBTRUVLX0VORCk7CiAJ
fQogCiAJZmlsZS0+cHJpdmF0ZV9kYXRhID0gZmlkOwpAQCAtNDE5LDYgKzQxNiw4IEBAIHY5ZnNf
ZmlsZV93cml0ZV9pdGVyKHN0cnVjdCBraW9jYiAqaW9jYiwgc3RydWN0IGlvdl9pdGVyICpmcm9t
KQogCWlmIChyZXR2YWwgPD0gMCkKIAkJcmV0dXJuIHJldHZhbDsKIAorCWlmIChmaWxlLT5mX2Zs
YWdzICYgT19BUFBFTkQpCisJCWdlbmVyaWNfZmlsZV9sbHNlZWsoZmlsZSwgMCwgU0VFS19FTkQp
OwogCW9yaWdpbiA9IGlvY2ItPmtpX3BvczsKIAlyZXR2YWwgPSBwOV9jbGllbnRfd3JpdGUoZmls
ZS0+cHJpdmF0ZV9kYXRhLCBpb2NiLT5raV9wb3MsIGZyb20sICZlcnIpOwogCWlmIChyZXR2YWwg
PiAwKSB7Ci0tIAoyLjMxLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
