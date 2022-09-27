Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3239F5ED109
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 01:32:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odK3s-0003M7-Km;
	Tue, 27 Sep 2022 23:32:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1odK3r-0003M0-3Q
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 23:32:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KfB+fJnhHE2zNulRQQ9KUqULi3PBY5621b0zSJ+rRiI=; b=cXb8Ui+ZvKuyM3LZj8Pzox+ink
 Wciu9pT2ae+EGBUe9bsqUPZ4A9N1BTAbsDqxlYj7Jjw/JOBtDo8xM0aikae4Y9wtD5HPTUwKGeRp3
 pSJdyE2G8cxumO2sepGevnfb64lwZFoNgaQ1cfxgSc5ronAfdE7sk/EVg6NCNKj85pSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KfB+fJnhHE2zNulRQQ9KUqULi3PBY5621b0zSJ+rRiI=; b=gSCE1RfEVGrCzEOa671PH2yJfp
 CM0ifjRu+IW5sxvYMaMsEwXsL1/FVf827kSrBLjmVbx4xpBESoV3MelbN868UBn6353FzouzWV44a
 nkiWib8NdFpJ0FTeEdCOeFwNO7gBqDgeSM1Zv6ruGxzUyRfCCsLN7WckkS4X+zx5tfwg=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odK3n-004zhq-40 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 23:32:23 +0000
Received: by mail-oi1-f180.google.com with SMTP id m81so13661419oia.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 27 Sep 2022 16:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=KfB+fJnhHE2zNulRQQ9KUqULi3PBY5621b0zSJ+rRiI=;
 b=eau9HmKWyfvAuZEwtj7QmoK1HfJjCFwMuGix17udzmlKEuY9lkpqohrD8wt66JHwRT
 KSb6sLNqwfRowI6r24gS+Zlb3hfVff9y/t86iE4vRCCd8Wu4+5O/4s5NeMKfgSdL25d0
 4q4wxZ2TkMP/C5fgo0cocvMGfHF7nF9wQ5WEh4m8G54JES3Snsl8aJtJX6AiVdZoZ69k
 IECpUZuksJFAsF+Ji9+YHOxewd0pA+3uj9PaBBYcuJS8D/yxcIYLdlq5cCO6Nsork0j7
 s23g1jmzUfjyYTlhzE9TD+j0pK3IuZNVK8zklyluBLFDWDfKjz0yKU+N1f+nCKoAf8DG
 ksoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=KfB+fJnhHE2zNulRQQ9KUqULi3PBY5621b0zSJ+rRiI=;
 b=gZ/HAEDkI/5QojZui2mxOgxwknygSz9SpB/bmiWN+gb51wfaXNy5f9WvwcSvcRH5gg
 H63A9rCgFbH/NnYj92WrvYroPNB6oIo8XKcT8K+K5pSIwfwgy21zjGoDF9UuxeAmJDsF
 fAR5PVxVtLDp+oFfEin2LCGvqk3v4j738dB8xGWuJxKNddt9sEih/F8py3UPWsWGHwo9
 EX1YoewTI0V5zDLNBpEA/fJs0vCXVLzcEoo9A5v3ZSxV0fOEeS1UIOKiaKJ11VaSxaUk
 5Q6fzBApN55Tq67omSynPzl8n4mGXT315lOQTdlEIeMxefAvSrYOhwXeIndZAf1eLqP4
 KNBQ==
X-Gm-Message-State: ACrzQf18OSid4j7/rlDwH3QJT6+RcnO7mLtFkfFC6kLvAHkWtUQT2J+G
 EBYj++pTqlSh6/fcgo+L18iXubDnzrd/JXXM9+C0Whet+A==
X-Google-Smtp-Source: AMsMyM6wd85jvS0PvhSbxvF1obwpMq99dFhlTudrpP66jnQIV+3XyzCJE77VYyMHZTqUd1kmc1lJlvv3EpWrA2BlTrM=
X-Received: by 2002:a05:6870:a916:b0:131:9361:116a with SMTP id
 eq22-20020a056870a91600b001319361116amr2006434oab.172.1664321057952; Tue, 27
 Sep 2022 16:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
 <20220927074101.GA17464@lst.de>
 <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
In-Reply-To: <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 27 Sep 2022 19:24:07 -0400
Message-ID: <CAHC9VhToUZici98r10UJOQhE48j-58hUheT0P8GE9nC38p=ijQ@mail.gmail.com>
To: Casey Schaufler <casey@schaufler-ca.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 27,
 2022 at 10:13 AM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > > On 9/27/2022 12:41 AM, Christoph Hellwig wrote: > > On Mon, Sep
 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1odK3n-004zhq-40
Subject: Re: [V9fs-developer] [PATCH v2 00/30] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 linux-security-module@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Seth Forshee <sforshee@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Sep 27, 2022 at 10:13 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
>
> On 9/27/2022 12:41 AM, Christoph Hellwig wrote:
> > On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
> >> I suggest that you might focus on the acl/evm interface rather than the entire
> >> LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
> >> I don't see how the breadth of this patch set is appropriate.
> > Umm. The problem is the historically the Linux xattr interface was
> > intended for unstructured data, while some of it is very much structured
> > and requires interpretation by the VFS and associated entities.  So
> > splitting these out and add proper interface is absolutely the right
> > thing to do and long overdue (also for other thing like capabilities).
> > It might make things a little more verbose for LSM, but it fixes a very
> > real problem.
>
> Here's the problem I see. All of the LSMs see xattrs, except for their own,
> as opaque objects. Introducing LSM hooks to address the data interpretation
> issues between VFS and EVM, which is not an LSM, adds to an already overlarge
> and interface. And the "real" users of the interface don't need the new hook.
> I'm not saying that the ACL doesn't have problems. I'm not saying that the
> solution you've proposed isn't better than what's there now. I am saying that
> using LSM as a conduit between VFS and EVM at the expense of the rest of the
> modules is dubious. A lot of change to LSM for no value to LSM.

Let's take a step back and look not just at the LSM changes, but the
patchset as a whole.  Forgive my paraphrasing, but what Christian is
trying to do here is introduce a proper ACL API in the kernel to
remove a lot of kludges, special-cases, etc. in the VFS layer,
enabling better type checking, code abstractions, and all the nice
things you get when you have nice APIs.  This is admirable work, even
if it does result in some duplication at the LSM layer (and below).

It is my opinion that the impact to the LSM, both at the LSM layer,
and in the individual affected LSMs is not significant enough to
outweigh the other advantages offered by this patchset.

-- 
paul-moore.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
