Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7BD8F65E
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Aug 2019 23:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fQW9ldnT4FWLoelG3+gfj76rnDP8WQSsl84kiKtSYuo=; b=DekipVkt0bnU3QD46/dSVKUPrN
	CjmUocs74SuGAqoXFJb4NSzLbwelRZVb+IOWrF2ZM23rIyHKYgqu0qBIVfRYXj/9LLSFg7BleCTg5
	kY50QcR6tSzi0TxlC1a5nne6idQfx/+0V2zyDXQAL+9GMb9X/g4AfMltKaOzyf3kwkco=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hyNGr-0001qX-85; Thu, 15 Aug 2019 21:26:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salyzyn@android.com>) id 1hyNGq-0001qA-FE
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Aug 2019 21:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NQPI89pyKynFZwWztDWLjrPNlq9e9KFjYiijpvVD82o=; b=Sw3olkLMMs5wISAP49Y3AC0g5m
 1q5MKf6syJLGHNex8Y93Del+W8jsoq8z1OuUUJ2XIMOBz7jB8NaLy959wzJaMBY4sCt5eKKyWLNKQ
 tqqJLLEzr/IWW0U0zrCu81h5bRpKRvAJBdVKoCBsSXR9/qGN4WNMm/OsisPzBt8XR/iE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NQPI89pyKynFZwWztDWLjrPNlq9e9KFjYiijpvVD82o=; b=LnJZ3kcnmidiN3ihAebbj+3sC0
 PScyWB77Xs4m3FwhyUPix6Abxg6mU7Mc769DwkkAKgK9s8+hfGoxbks7Ele6CVXZokTWqEkwqqApX
 vlgx5e/lw4n3E8+x0IxZ06hq98wJjSTyhLiAw1Yml7hsZi1h7IIjuLWQLf3OXiGQsKHg=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hyNGp-005DTP-07
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Aug 2019 21:26:56 +0000
Received: by mail-pf1-f193.google.com with SMTP id w26so1942683pfq.12
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 15 Aug 2019 14:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=NQPI89pyKynFZwWztDWLjrPNlq9e9KFjYiijpvVD82o=;
 b=lIpZ0g9DtDyqIqk3Pk+f3LAbBb1IHJR/OqcvIqSvHq+yBEN7osFWEACcZH+FVTGAN+
 z81fgESdI7fNhc3JgTo9dRJMBztkRx79bvkDfp3/xi9bZurWt2357qZZo4tFW7M0y0Ej
 A6uvlorCTKMuc3kR41qxmYDng3wbRM+BG0tiDg042ULiVNZsJKa0xmpkuCsfDllwdR+e
 dG4DrPqiLG1FI9UfDGP54YpE2IKITme3NrNG9h5Xx1BAmyChoM9PJ99fCCQ/KwOPT9he
 yumEroYrkBe4fkJ0BYuWZmThYwe0QxWcBl+TbCtzexrk33BB01Ff8hxY8VdTWES/ELDc
 HaRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NQPI89pyKynFZwWztDWLjrPNlq9e9KFjYiijpvVD82o=;
 b=Qm/8S+ygjEdLHKoQ2f0swmU/L398lv7op8KQxlTe9Mt7LjxDAzIpD/3G53e+2pK1et
 dXI0dHGnR2lSjlwe+Pjko0sjXzFuiwRkA2r+mWnar50AgKt+TtnY4wOFzwmovYXxmIcm
 9uAZf1E6WBDF3OaNkCWWncrzbA1MVo7dvlAoRb+KpjhNEwgJUj3a/5C2Mf9PUAwn6IbW
 nmqXnbsOqFRgpFpxoikIbm27oj/xYN4YxtnUt1sOUoU7A0p+LnkRbpPRKju/TZEXWDzY
 QRWRuCeCruS2dehpL1dXn91nbN9Brk2zKxnvvbHHJy+plyA9rWPjPd/BymEU/FhH1uHY
 M+1A==
X-Gm-Message-State: APjAAAX0pV17T6VzNuK4hp57V12/lo1OL8jeedU7tdEneW84I2FYmQ+O
 eZMd1WoVdGx3qzUX/paJ/pGElg==
X-Google-Smtp-Source: APXvYqzllKC5ksLQDzyaqGJCDuceyLpQSHPwoKzZQcbJiABKWTaC5jPOSVkAOdc7QTtTY77anKcswg==
X-Received: by 2002:a62:e910:: with SMTP id j16mr7618601pfh.123.1565904408941; 
 Thu, 15 Aug 2019 14:26:48 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id v7sm3875690pff.87.2019.08.15.14.26.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:26:48 -0700 (PDT)
To: James Morris <jmorris@namei.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190812193320.200472-1-salyzyn@android.com>
 <20190813084801.GA972@kroah.com>
 <alpine.LRH.2.21.1908160515130.12729@namei.org>
Message-ID: <69889dec-5440-1472-ed57-380f45547581@android.com>
Date: Thu, 15 Aug 2019 14:26:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.1908160515130.12729@namei.org>
Content-Language: en-GB
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hyNGp-005DTP-07
Subject: Re: [V9fs-developer] [PATCH] Add flags option to get xattr method
 paired to __vfs_getxattr
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
From: Mark Salyzyn via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Mark Salyzyn <salyzyn@android.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, samba-technical@lists.samba.org,
 Chao Yu <yuchao0@huawei.com>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, "David S. Miller" <davem@davemloft.net>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Eric Paris <eparis@parisplace.org>,
 netdev@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 Hugh Dickins <hughd@google.com>,
 =?UTF-8?Q?Ernesto_A=2e_Fern=c3=a1ndez?= <ernesto.mnd.fernandez@gmail.com>,
 cluster-devel@redhat.com, selinux@vger.kernel.org,
 Vyacheslav Dubeyko <slava@dubeyko.com>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 kernel-team@android.com, linux-mm@kvack.org, devel@lists.orangefs.org,
 Serge Hallyn <serge@hallyn.com>, linux-cifs@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, ecryptfs@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, reiserfs-devel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, Joel Becker <jlbec@evilplan.org>,
 linux-mtd@lists.infradead.org, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Paul Moore <paul@paul-moore.com>, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-fsdevel@vger.kernel.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mathieu Malaterre <malat@debian.org>,
 Stephen Smalley <sds@tycho.nsa.gov>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, Steve French <sfrench@samba.org>,
 linux-security-module@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 Jan Kara <jack@suse.com>, Bob Peterson <rpeterso@redhat.com>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 David Woodhouse <dwmw2@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 8/15/19 12:20 PM, James Morris wrote:
> On Tue, 13 Aug 2019, Greg Kroah-Hartman wrote:
>
>> On Mon, Aug 12, 2019 at 12:32:49PM -0700, Mark Salyzyn wrote:
>>> --- a/include/linux/xattr.h
>>> +++ b/include/linux/xattr.h
>>> @@ -30,10 +30,10 @@ struct xattr_handler {
>>>   	const char *prefix;
>>>   	int flags;      /* fs private flags */
>>>   	bool (*list)(struct dentry *dentry);
>>> -	int (*get)(const struct xattr_handler *, struct dentry *dentry,
>>> +	int (*get)(const struct xattr_handler *handler, struct dentry *dentry,
>>>   		   struct inode *inode, const char *name, void *buffer,
>>> -		   size_t size);
>>> -	int (*set)(const struct xattr_handler *, struct dentry *dentry,
>>> +		   size_t size, int flags);
>>> +	int (*set)(const struct xattr_handler *handler, struct dentry *dentry,
>>>   		   struct inode *inode, const char *name, const void *buffer,
>>>   		   size_t size, int flags);
>> Wow, 7 arguments.  Isn't there some nice rule of thumb that says once
>> you get more then 5, a function becomes impossible to understand?
>>
>> Surely this could be a structure passed in here somehow, that way when
>> you add the 8th argument in the future, you don't have to change
>> everything yet again?  :)
>>
>> I don't have anything concrete to offer as a replacement fix for this,
>> but to me this just feels really wrong...
> How about something like:
>
> struct xattr_gs_args {
> 	struct dentry *dentry;
> 	struct inode *inode;
> 	const char *name;
> 	const void *buffer;
> 	size_t size;
> 	int flags;
> };
>
> int (*get)(const struct xattr_handler *handler, struct xattr_gs_args *args);
> int (*set)(const struct xattr_handler *handler, struct xattr_gs_args *args);
>
Good Idea, but using the same argument structure for set and get I would 
be concerned about the loss of compiler protection for the buffer 
argument; it is void* for get, and const void* for set. And if we pulled 
out buffer (and size since it is paired with it) from the structure to 
solve, the 'mixed' argument approach (resulting in 4 args) adds to the 
difficulty/complexity.

Good news is the same structure(s) can get passed to __vfs_getxattr and 
__vfs_setxattr, so one less issue with getting the argument order 
correct from the caller.

 From an optimization standpoint, passing an argument to a pointer to a 
structure assembled on the stack constrains the compiler. Whereas 
individual arguments allow for the optimization to place all the 
arguments into registers. All modern processors have no issue with tens 
of arguments.

So, I will look into what the patch set will look like by splitting into 
set and get, and trying to reuse the structure down the call chain.

struct getxattr_args {
	struct dentry *dentry;
	struct inode *inode;
	const char *name;
	void *buffer;
	size_t size;
	int flags;
};

struct setxattr_args {
	struct dentry *dentry;
	struct inode *inode;
	const char *name;
	const void *buffer;
	size_t size;
	int flags;
};

-- Mark





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
