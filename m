Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4BB904AC
	for <lists+v9fs-developer@lfdr.de>; Fri, 16 Aug 2019 17:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S9zTx0ejCsAQ3n/Fwo6vn7PAIazzNTtqxlTjC9vXUuY=; b=Mx1N8BKM+N0yxIH3jxw3WfHET/
	BjdgkYIBOEUbp3a+lmkSR6gcUEqjjAxYmfGK0CwxtUUYk1rigxfpbJtlyiShHQovVpHn3SbAUD+47
	Vn4Re1hxY/hrpR9tErMLD5tfPAM8cbsgWXWsC3mPenKML1c4LFMb3G6g0h4WCbJR4Ms0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hyeBe-000314-Ix; Fri, 16 Aug 2019 15:30:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salyzyn@android.com>) id 1hyeBd-00030m-4i
 for v9fs-developer@lists.sourceforge.net; Fri, 16 Aug 2019 15:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mfAPdWffqPCiWWdG0+diH1s9rsdeIRT69OHzvRcyJZE=; b=RJBOi2Kg5AayuGGJpMr93qvesc
 Oy/meKDZ/pEGD7aJYTJfwp6YcB+CMnz9EALNUcigL1a3ByCe6RpVWwV9BlNULxpJUzwPIJPSgvGkL
 FVQPCvuxPILkyqsojYHq9BJA7LuM3Pr/OpN03NNHGAc0Tw+Ber6Q84OnoAJ4x39Nb9rQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mfAPdWffqPCiWWdG0+diH1s9rsdeIRT69OHzvRcyJZE=; b=kG2zykzZ+cvEp15AN5pMLg4a+c
 sbwly+WpPV1JPFf/EUj7qX4LcYXKRFFrLiPBhC5887vlFfyq9uwnh1a1W2qebEynfEyvzoMxBNWc1
 05a4DSmGTwEYsR7yGR1ZKi8TGHzOx6e4tFDhS9oD6MyBkbz/fzt+tPt/ihdeFLvJtCIE=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hyeBb-005Xj6-J4
 for v9fs-developer@lists.sourceforge.net; Fri, 16 Aug 2019 15:30:41 +0000
Received: by mail-pg1-f195.google.com with SMTP id n9so3126882pgc.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 16 Aug 2019 08:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=mfAPdWffqPCiWWdG0+diH1s9rsdeIRT69OHzvRcyJZE=;
 b=n1rDvKmVIIzl5LQ8693geFLmZfVk3SNTRXjV+iWc+8TCGMLKeW1iTeiBjvRiueqoqF
 D9q8mlFSvHVsZFYo8y0kE96uO6kmQFQLzsCMbZOk0QJBcZZXpIGyVUfhKCZdaUtIfVCv
 i/NoHfVU/jNOhInU0nZF00JzrYo84Kc4poGmJ+0xtP3BbotZEuJh4vLNcJnKiqpzbKqX
 VAVojoCQ9+7vUVRbeqlgJ3x1mKtd9gYqddIhEV1djd0QWV+eU6MOHKC8ZzBAyRJxBa4j
 h2AWL75nzhxsVUvXnKj119sMtgytuLB07uRnQLjRyRsPInJpSQZBT6UeAUBurB9zqibi
 wIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mfAPdWffqPCiWWdG0+diH1s9rsdeIRT69OHzvRcyJZE=;
 b=sxIhuV6M1I4K6eKkmr9nVYcKq5UzxP5RUUkyd+oK8oJz0nOtv/GqULjmNF/D7hq3pS
 SX+X6G4FksFKcrC9BNdgdEmS9XwjuvawH0spvcz5Re9r7D6s2U0IMtIT59NzxZw1KFoC
 HzoaDYS/WwYltCNDtTeYbWh0aBXVzs3veRnHjXKFmFKtmp/CC74dqlksglzVMc3HCJWR
 G1+J3AY8VwI2mu3WblqmlgIm6tdlLP8d0VDkRz+OSoCCDQh9K5ol+nauUJWHa0hhhCX4
 Jq07pGckcDagFRk7a4dSZkBehc/qIVKtbFPHFfuBRLgb8FnoQn6/0p49gKlca3fcg2er
 Mjyg==
X-Gm-Message-State: APjAAAVuiK2o8Hl3leNnBmy0OhMljt7JvTyUCeWWG98rn6yTS7ma71jG
 /v1zPc1owERAREp1VFdZiD3ncg==
X-Google-Smtp-Source: APXvYqydx2RtAVHirZjlmSa0Unc3LrMXkJsKHb448nh37ky9aF7sEwD8P8sx+d4AByX8L7k2WfP+gw==
X-Received: by 2002:a17:90a:77c9:: with SMTP id
 e9mr7407215pjs.141.1565969433680; 
 Fri, 16 Aug 2019 08:30:33 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id l4sm4355544pjq.9.2019.08.16.08.30.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:30:32 -0700 (PDT)
To: James Morris <jmorris@namei.org>
References: <20190812193320.200472-1-salyzyn@android.com>
 <20190813084801.GA972@kroah.com>
 <alpine.LRH.2.21.1908160515130.12729@namei.org>
 <69889dec-5440-1472-ed57-380f45547581@android.com>
 <alpine.LRH.2.21.1908160825310.22623@namei.org>
Message-ID: <92b1df4b-6433-7d01-9c08-23de10e8d527@android.com>
Date: Fri, 16 Aug 2019 08:30:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.1908160825310.22623@namei.org>
Content-Language: en-GB
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hyeBb-005Xj6-J4
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
 jfs-discussion@lists.sourceforge.net, kernel-team@android.com,
 linux-integrity@vger.kernel.org, Martin Brandenburg <martin@omnibond.com>,
 samba-technical@lists.samba.org, Chao Yu <yuchao0@huawei.com>,
 Mimi Zohar <zohar@linux.ibm.com>, linux-unionfs@vger.kernel.org,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 "David S. Miller" <davem@davemloft.net>,
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
 Stephen Smalley <sds@tycho.nsa.gov>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Serge Hallyn <serge@hallyn.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 ecryptfs@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 reiserfs-devel@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Joel Becker <jlbec@evilplan.org>, linux-mtd@lists.infradead.org,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Paul Moore <paul@paul-moore.com>, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-fsdevel@vger.kernel.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On 8/15/19 3:27 PM, James Morris wrote:
> On Thu, 15 Aug 2019, Mark Salyzyn wrote:
>
>> Good Idea, but using the same argument structure for set and get I would be
>> concerned about the loss of compiler protection for the buffer argument;
> Agreed, I missed that.

Sadly, the pattern of

struct getxattr_args args;

memset(&args, 0, sizeof(args));

args.xxxx = ...

__vfs_getxattr(&args};

...

__vfs_setxattr(&args);

would be nice, so maybe we need to cool our jets and instead:

struct xattr_gs_args {
	struct dentry *dentry;
	struct inode *inode;
	const char *name;
	union {
	        void *buffer;
	        const void *value;
	};
	size_t size;
	int flags;
};

value _must_ be referenced for all setxattr operations, buffer for getxattr operations (how can we enforce that?).

>> struct getxattr_args {
>> 	struct dentry *dentry;
>> 	struct inode *inode;
>> 	const char *name;
>> 	void *buffer;
>> 	size_t size;
>> 	int flags;
> Does 'get' need flags?
>
:-) That was the _whole_ point of the patch, flags is how we pass in the 
recursion so that a security/internal getxattr call has the rights to 
acquire the data in the lower layer(s).

-- Mark



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
