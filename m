Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E40076B8767
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Mar 2023 02:07:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbt8R-0006tu-5c;
	Tue, 14 Mar 2023 01:07:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hackerzheng666@gmail.com>) id 1pbt8K-0006tn-I4
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 01:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ez3+RDUCElUZ3KRWgoEdBjByADecatFijFRc/79Sbd8=; b=S+B2BKF37ISS0iC27QFweFR3Ly
 L8ZmIx02fdsd09DI4M01+7AtiGixI5Tuwsp/1dvWyYKEUZPae+0Yuqs0bieR8FhZOBN01PpnDXNRV
 AvKB4m4TuTa0n5nmpVcO2Uw9FRstIjqJ1IoOAlD73rEgrkixSa1P1cZtrdS6mifx5/Mc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ez3+RDUCElUZ3KRWgoEdBjByADecatFijFRc/79Sbd8=; b=KO1053xcyK5d8XcNLKGIeCJM/r
 P6QuLmAE5pxU2EFY9LK5T9sMkSEbO7oWhYubLQSRbEp3/mPm53A+basNtPSAI2H+Im7u/VNBIlIUO
 HNSyb+GGIlySf3pWi9S05zbwfbCKGQdTkEmSjijfeENbSyrUeRrt+ReEirgRSLcFkBiE=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbt8K-0001oe-3C for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 01:07:20 +0000
Received: by mail-pj1-f46.google.com with SMTP id nn12so13782933pjb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 18:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678756034;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ez3+RDUCElUZ3KRWgoEdBjByADecatFijFRc/79Sbd8=;
 b=Lh3Lk9QByLiTuLo0GbHbPZVn42HpHmiteaozRT0nJMQQVGLbaVAi2eMobpNaTsVZe3
 d9wnBoP9JMuU9GxWhdjPqoUSXxnDkgp/BeURM/0bK5kzz2NA2OqQbq93aj9eujgNhQUW
 1zDyp9awqbn0JCUk8fJYBTK5ZcwHenLWgaBllHCJmC0kDIDoZ/xcQNgrxnqnqsFvRQZR
 vc7/r3P2wxDJ3gnqoKuRFxc1PmAKb9BNDUYQXH68gUp+IMDncgLXQwh4wKgiQVGPTFwA
 022sJAaKT615iNoluKulophjUd6ijME5tFgc2HF2Bki2c9IPHtMfZNqssHTigsX9EImW
 G1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678756034;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ez3+RDUCElUZ3KRWgoEdBjByADecatFijFRc/79Sbd8=;
 b=an+8arX1Y9Cb2g+kVtINDqpTSmyJLSpbJvO0+p720AEkkOZyxNqOieoK+d16Yjvz/F
 BUJFaJCmEO7CFRphIaT4vjqQ/9aadgGIJFi3FIHJVfYi+dQlkWfIHqKTOHgK3cBV23t/
 YsdVUGaQndCeajqkmvYJEuTKmrTmrUnACsNRrnqt+AMSgk02Yj16gGEL17diOBaLQlpf
 1KXuQzOsDaz+gfpUmVeoLPU8g35jibyTS8fKZfEf8T7glbE3u7Vv2DSP33TrxGTv7uSm
 bl+7LiBNkofBAK6KMJKnD2tmh0saaqaDK4IuIuSyCF8gDbeDiB60mqq2kA7myTm8wVkf
 4FRg==
X-Gm-Message-State: AO0yUKVpqdZK9OE+Q+M0PBdOFId8ncadGIGCpjWRfDZQbf8oM/HRauxW
 SRFtkBYmQ0EsXG3OJ/9dbuxw/JRtliADcUzpBzs=
X-Google-Smtp-Source: AK7set+7Dne9RAO1VX9WwTYRe18fqrlT8ElHytfewhbt2jQXXfmgBIYK+Qko1oopb9SOpdgJb45wrlveKEPYLdrfn38=
X-Received: by 2002:a17:902:f985:b0:19f:2802:dabb with SMTP id
 ky5-20020a170902f98500b0019f2802dabbmr3287260plb.12.1678756034505; Mon, 13
 Mar 2023 18:07:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
 <20230313143054.538565ac@kernel.org>
In-Reply-To: <20230313143054.538565ac@kernel.org>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Tue, 14 Mar 2023 09:07:02 +0800
Message-ID: <CAJedcCwXhrkfVOHz-+N=qZxP465JJ0wSJG37ppOAFNfDt0ABqQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Jakub Kicinski 于2023年3月14日周二 05:30写道： >
   > On Mon, 13 Mar 2023 14:54:20 +0100 Michal Swiatkowski wrote: > > > @@ -274,12
    +274,17 @@ static const struct xenbus_device_id xen_9pfs_fro [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [hackerzheng666[at]gmail.com]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.46 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [hackerzheng666[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pbt8K-0001oe-3C
Subject: Re: [V9fs-developer] [PATCH net v2] 9p/xen : Fix use after free bug
 in xen_9pfs_front_remove due to race condition
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
Cc: lucho@ionkov.net, alex000young@gmail.com, pabeni@redhat.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, 1395428693sheep@gmail.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Zheng Wang <zyytlz.wz@163.com>, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyM+W5tDPmnIgxNOaXpeWRqOS6
jCAwNTozMOWGmemBk++8mgo+Cj4gT24gTW9uLCAxMyBNYXIgMjAyMyAxNDo1NDoyMCArMDEwMCBN
aWNoYWwgU3dpYXRrb3dza2kgd3JvdGU6Cj4gPiA+IEBAIC0yNzQsMTIgKzI3NCwxNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHhlbmJ1c19kZXZpY2VfaWQgeGVuXzlwZnNfZnJvbnRfaWRzW10gPSB7
Cj4gPiA+ICBzdGF0aWMgdm9pZCB4ZW5fOXBmc19mcm9udF9mcmVlKHN0cnVjdCB4ZW5fOXBmc19m
cm9udF9wcml2ICpwcml2KQo+ID4gPiAgewo+ID4gPiAgICAgaW50IGksIGo7Cj4gPiA+ICsgICBz
dHJ1Y3QgeGVuXzlwZnNfZGF0YXJpbmcgKnJpbmcgPSBOVUxMOwo+ID4gTW92ZSBpdCBiZWZvcmUg
aW50IGksIGogdG8gaGF2ZSBSQ1QuCj4gPgo+ID4gPgo+ID4gPiAgICAgd3JpdGVfbG9jaygmeGVu
XzlwZnNfbG9jayk7Cj4gPiA+ICAgICBsaXN0X2RlbCgmcHJpdi0+bGlzdCk7Cj4gPiA+ICAgICB3
cml0ZV91bmxvY2soJnhlbl85cGZzX2xvY2spOwo+ID4gPgo+ID4gPiAgICAgZm9yIChpID0gMDsg
aSA8IHByaXYtPm51bV9yaW5nczsgaSsrKSB7Cj4gPiA+ICsgICAgICAgICAgIC8qY2FuY2VsIHdv
cmsqLwo+ID4gSXQgaXNuJ3QgbmVlZGVkIEkgdGhpbmssIHRoZSBmdW5jdGlvbiBjYW5jZWxfd29y
a19zeW5jKCkgdGVsbHMgZXZlcnl0aGluZwo+ID4gaGVyZS4KPgo+IE5vdGUgdGhhdCA5cCBpcyBt
b3JlIHN0b3JhZ2UgdGhhbiBuZXR3b3JraW5nLCBzbyB0aGlzIHBhdGNoIGlzIGxpa2VseQo+IHRv
IGdvIHZpYSBhIGRpZmZlcmVudCB0cmVlIHRoYW4gdXMuCgpTb3JyeSBJIGdvdCBjb25mdXNlZC4K
CkJlc3QgcmVnYXJkcywKWmhlbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
