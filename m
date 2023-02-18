Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C669BAFB
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 17:24:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTQ0v-0008K3-5A;
	Sat, 18 Feb 2023 16:24:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTQ0t-0008Jt-8w
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:24:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nNG/ZkOCIrrfrgO8M6bqZE57VLyTtK7ATZ3OMgUqmyA=; b=kZDFSqyB3kFMdKlHbQDkQs1Iku
 w8vakutu61/xvh0F0zZx4rbI4RMGWbvPkshXqwulr3i0KEKrpskDoflq1lIPbqsZD3pETfpKXuvst
 FdVQwSe7rmp/9dLt+DkqFcPEyp5hwq99ZxRwjxjZkx5+RvtMXQoGjhBHVzB49ZLCuEyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nNG/ZkOCIrrfrgO8M6bqZE57VLyTtK7ATZ3OMgUqmyA=; b=AMk/TWUBBtrvGge7aDR5ALZgyR
 K91bOhhF8Fehlhay4lw8t0hhuJG5IpUvidA9w39ktvzlBzkv5D4xML4osbo3eH1D8wRvjCZkew0ZW
 S+n+apuJPSlb4v+EfgFeK/jYPyH8Zv1DPgpxf0/1MCn+uyNj/z2+Ull/0emRXH2/swfw=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTQ0p-008lYO-6F for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:24:38 +0000
Received: by mail-wr1-f50.google.com with SMTP id 2so741622wrz.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 18 Feb 2023 08:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nNG/ZkOCIrrfrgO8M6bqZE57VLyTtK7ATZ3OMgUqmyA=;
 b=SopmrsAD92rtqJgzUbDjMoG/uvyDq05yQOviGlTdjGdHdGw/vno8LqBLWm6hacs0Ys
 FI/eAQNM1rpK2yh9uniWFbJiVTw+MOI/07Btn1TALCpmoAymBUhBmB+l5+wkzvkVznoN
 KaxDGgs8YVFrsHkL2ugCuUYSlfc84ViA11PhyrlIAysK3tJZrjAR6SfnbZUVTQHKGGhQ
 jriTfdvlzLvUzlbokfsvKuz7gAoc6OwKp5fLWCE1xhmpqp9eOdGhE3eg9MWf6JQpOuAj
 zvf24okaPnMjgQ0MUmmvMJ1ZSqItPeDi/g2Dz1Dfjs30G/2ICD9CMMaUZfJWOEjx4yCE
 YUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nNG/ZkOCIrrfrgO8M6bqZE57VLyTtK7ATZ3OMgUqmyA=;
 b=2w9MGoOeOS+IO/vb07oczGOMQIPeAHKiPxd8eZnOba726nNmhBsqpyHlY0LvYJj1QO
 v2kxkBIiIrHucU011N6zEFJp05dT3lDOkI8DlVTNNHBaIYMq2FlTFncGZMIk2W9JeYLY
 IbOx355pc+ztii5A17PRmqHM6pXspwnAilkDCLh99GE2Ryc9S5ZzX75N0vj4iXWcjuqq
 4qKJlwtbaHCjPp/9KyEnoDzJoWFsj4mpW9vx2zBwlvhonhPhX1yOGtO3ZKN9IcNrgUEw
 H+q4Kzu68O3tY8E919Tj2JwU9m0yG6HpyAT/iHYqpsuTeaMhwtGqfSdHwAUbUZXuY+v0
 BX0w==
X-Gm-Message-State: AO0yUKUjTzqn3mOt+NF3qmyqDlpUXlczOnyypBAY34WCWpCvNOXAX8+T
 cdizft82An8iE/qpEvGpvw9nrsQIdmh3aVyuX97k/lBIpik=
X-Google-Smtp-Source: AK7set+IJQedZgNv3Xg8eCsBCe8oByqYF768XCrPeeTCvF0MpLXSOAbCa6NGgA6L59XPm2UqqDvTyj06v0wWeXkvT60=
X-Received: by 2002:a5d:6e8a:0:b0:2c5:50db:e9fc with SMTP id
 k10-20020a5d6e8a000000b002c550dbe9fcmr46111wrz.674.1676737468580; Sat, 18 Feb
 2023 08:24:28 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-5-ericvh@kernel.org> <Y/CbhQVeO8/pxrBE@codewreck.org>
In-Reply-To: <Y/CbhQVeO8/pxrBE@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 18 Feb 2023 10:24:17 -0600
Message-ID: <CAFkjPTmBs10YAPrXYx3hQHvVu0P3+_fJ+_eZ+9z6h7csSqRYbw@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  That's fair -- and it didn't seem to hurt anything to have
 DIRSYNC at the moment, so I can drop this patch if we think its too much
 noise. I guess it was more of a reaction the filesystem implicitly s [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTQ0p-008lYO-6F
Subject: Re: [V9fs-developer] [PATCH v4 04/11] fs/9p: Remove unnecessary
 superblock flags
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

That's fair -- and it didn't seem to hurt anything to have DIRSYNC at
the moment, so I can drop this patch if we think its too much noise.
I guess it was more of a reaction the filesystem implicitly setting
mount flags which might override whatever the user intended.  FWIW
SB_SYNCHRONOUS did seem to have an effect on behavior (although I
didn't specifically track down where) -- I noticed this because the
problems Christian found seemed to go away if I mounted the filesystem
with sync (which basically ended up overriding aspects of the cache
configuration I guess).

     -eric

On Sat, Feb 18, 2023 at 3:34 AM <asmadeus@codewreck.org> wrote:
>
> Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:16AM +0000:
> > These flags just add unnecessary extra operations.
> > When 9p is run without cache, it inherently implements
> > these options so we don't need them in the superblock
> > (which ends up sending extraneous fsyncs, etc.).  User
> > can still request these options on mount, but we don't
> > need to set them as default.
>
> Hm, I don't see where they'd add any operations -- if you have time
> would you mind pointing me at some?
>
> As far as I can see, it's just about 'sync' or 'dirsync' in /proc/mounts
> and the ST_SYNCHRONOUS statvfs flag; that looks harmless to me and it
> looks more correct to keep to me.
>
> (Sorry, didn't take the time to actually try taking a trace; I've
> checked the flag itself and the IS_SYNC/IS_DIRSYNC -> inode_needs_sync
> wrappers and that only seems used by specific filesystems who'd care
> about users setting the mount options, not the other way aorund.)
>
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
