Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B98265E694B
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 19:13:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obPlA-0004aJ-O4;
	Thu, 22 Sep 2022 17:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1obPl9-0004a8-1J
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 17:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E+TB2xzVAtYs6oaIse1U5u4O3jFfIFDg2n9/h4J23mQ=; b=V99xSyuPxwN9oCe39CCx3efVov
 EtvBowJDL0IEk5sgCMGcLluN9+ADbXHyWmTfv4gmaZ+ztgVX7NROIi3i/cHoGHCui3SteKxDXYEd+
 ZYNey8YSF5NbrPhJz8BReJs+MyzZVeYeMbzGQsFtBnao9NXjkLfy5AWfE94eLd4j6VZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E+TB2xzVAtYs6oaIse1U5u4O3jFfIFDg2n9/h4J23mQ=; b=E5RrcTRsCmRw3guouov5uD74Bx
 RMR/RsIYWPwjDa/y2FBda7kexg2wCqnNZo2SxfnInSF4RsImZqw/vKtzmoADJvFeZj/NOqRyEBTxr
 Ffu/YyWlqCPkaCTPUi7lfMRjnarDBQmADGRk4L967Huz2xvAh6xv72OnkmmYg2GwQ3d0=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obPl5-0000T5-PO for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 17:13:10 +0000
Received: by mail-oi1-f180.google.com with SMTP id n124so13192667oih.7
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 10:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=E+TB2xzVAtYs6oaIse1U5u4O3jFfIFDg2n9/h4J23mQ=;
 b=hZwYPcIhPeAjNOgItciD6P9tQ2CqjPnqBrXDktESEwoXCcVDeVfNPsErYWqpWrsniG
 emJGQAVsUQAWy6njKsrQ2VUhs9vgoM7JyAMz0gUPIMI9SekHZnEHQdrnzurl63Jdjzjq
 M0L6ts87GZvSQcU6DthLVlAn+RbgpF6sLcPB3dvkGg+CB+7znpVOhPoVoM+BjrAt530W
 UNYv7/J8TnX5H7T8Ea00pVmC2dCCBodKY0KE2dSHDTYxB0oRqYYYBeWWxxZpJNOIQTWV
 P9amwW24/C/svcfizPh4Hy+/rQzaJjh/LSCcKk1XXBjC+2XxzEqvo7gu82fGu7R2xntH
 g2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=E+TB2xzVAtYs6oaIse1U5u4O3jFfIFDg2n9/h4J23mQ=;
 b=N4KkSov01vmTszEPoHERiWMelWRajX9rEaxrWBDILZSZ+/UgBHsTI8P2y8KBiziOvP
 8GfzS174aJncCxlpzcCrNQ7kadFEUzrk1U0V1eyPyKVFwtFOWtA8TO9Ug2VK/EITvLgB
 C3aaWTcHoG0Pg3xXrRm9vpk4bsKwtbCTAqPRorw4pnUosiA+CSI91mFAhw/vTX1faBt6
 jnvTX2/jri07ABhvPY49hTrAmBZQVuuLkaxtnHwUBUrsISJ5W8cc2Z0aANhNB+O2ULpq
 qU2jtJ20tmAS8KmFcciUpEdYZAXXnJt25bg/YDexX9Mltdc3JI7ZpCVoi2XjJMMwZOD6
 HpsQ==
X-Gm-Message-State: ACrzQf0FVhV0cRUGpr5bwgqskH2EN/f6y7r4elTqdbljvEPeqtyAOoUz
 MchxFFLkAgnIMqcEODBP324wNWwXRm2rkeGd2ZLT
X-Google-Smtp-Source: AMsMyM7Kcj4ytM/Duu+9JyKTa042/nUxS8fy5KKBHgIY9wFm1ChYMIJYieo4kz+flxi9gRCBYGjfeh14xGVJrgDj2zo=
X-Received: by 2002:a05:6808:144b:b0:350:a06a:f8cb with SMTP id
 x11-20020a056808144b00b00350a06af8cbmr6995563oiv.51.1663866782132; Thu, 22
 Sep 2022 10:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
In-Reply-To: <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 22 Sep 2022 13:12:51 -0400
Message-ID: <CAHC9VhRnztLTg=YbavwCdY6PZKDppwzybTOpDmsCRmrxnQjz_g@mail.gmail.com>
To: Casey Schaufler <casey@schaufler-ca.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22,
 2022 at 12:27 PM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > On 9/22/2022 8:16 AM, Christian Brauner wrote: > > From: "Christian
 Brauner (Microsoft)" <brauner@kernel.org> > > Cou [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1obPl5-0000T5-PO
Subject: Re: [V9fs-developer] [RFC PATCH 00/29] acl: add vfs posix acl api
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
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 12:27 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 9/22/2022 8:16 AM, Christian Brauner wrote:
> > From: "Christian Brauner (Microsoft)" <brauner@kernel.org>
>
> Could we please see the entire patch set on the LSM list?
> ( linux-security-module@vger.kernel.org )
> It's really tough to judge the importance of adding a new
> LSM hook without seeing both how it is called and how the
> security modules are expected to fulfill it. In particular,
> it is important to see how a posix acl is different from
> any other xattr.

Yes, exactly.  I understand the desire to avoid dumping a large~ish
patchset on a lot of lists, but it's really hard to adequately review
something when you only see a small fraction of the overall change.

-- 
paul-moore.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
