Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B55A052D
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Aug 2019 16:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cWx/OgsrWqpG+aW6A2pyZUiaTkN/pPpGoNZ4Xln7FEw=; b=jOvHnMu/QxEX+SE4fzT128oGl5
	Li66Solrf09ynaCvFu2/8vg7QTJM24AxhImQGZbqYLWfus3KGKClFLO2fqJmyDfOuRUnZaTdHYbv5
	p+sTUePo1HBgBK4fcU7M99XdV3prLz+r0e/r5Ul6iQnNsBGpjilNeAQhWBiDx9hQItTg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i2z7b-0002Sn-CL; Wed, 28 Aug 2019 14:40:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salyzyn@android.com>) id 1i2z7Z-0002Sf-Q6
 for v9fs-developer@lists.sourceforge.net; Wed, 28 Aug 2019 14:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=otBOnvzgcCfij7khznQb839FNBhUwDL3v2TXcjGpOzs=; b=hGhAJTejL21NdBoNy259zvX+ZD
 ylJFPJ1oHl8IPENyBHBLCMUx6nEJCmU8anWJ7geI7+sEO9rzMiSSjli61KPyJAs28h4NEhjRN8ELW
 fiL5v//Rn0E43Tyvwgx16hu51bP1kul0uryPaTSEpKmfuM/3wp80w3MFGPNK2SWXmitE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=otBOnvzgcCfij7khznQb839FNBhUwDL3v2TXcjGpOzs=; b=is/IR2/72GPuCEHjzC73fps3S7
 UcCNwYqM6gJxXfuWttgTKrh9D34frnKdLi7sNppTovliuPh71uKqRR/SGuHFsqIvpcArqeijC21Fu
 4yU/4DVvkcy120y4Mn1sQDtMfCW46MwxUNSFA8cQ6fzZvaF6HblqCiyrTYG4Aj/csrr4=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i2z7Y-006T7l-FV
 for v9fs-developer@lists.sourceforge.net; Wed, 28 Aug 2019 14:40:25 +0000
Received: by mail-pf1-f196.google.com with SMTP id y9so1868891pfl.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 28 Aug 2019 07:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=otBOnvzgcCfij7khznQb839FNBhUwDL3v2TXcjGpOzs=;
 b=OlcPfkFh4eVXaPXXhh3cHvgBURsJe3iAt4+TEVeWmIUa8zc09e0oQ5MaZNlepG2vze
 B3r7RgJuWq9O6TIbswaNUIKe8aYWW+KNRgEXeCMfCvmELHUyftJPl7HAVt/DUWoqH+mt
 7FiMUsP13ILyRxskXvgoEKTt4mcyDqpG+bZTW39pIt/5h+k8/JBgcB7qNM0XACYD7ale
 oWFmT2jC5R2Rv9fP9CO4NSXlbVjGTO4SWvbIfLdPsT4850CBsX7b6iyMaVYsWWgBm0EJ
 ydfkWGX0BboAbCSeR2RRikvC2V1c34KnlnNThn4oWcDh6RwGfO3sPku0/xiss22u0zC8
 qA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=otBOnvzgcCfij7khznQb839FNBhUwDL3v2TXcjGpOzs=;
 b=eBzmwYS09IVLcvcKIqtYAsJB+NqWWu4HUZZcSShFODOolW/bti/Ayy4rBsHV/06uHO
 5USWa8jahZrZQ8Mz4wHkyjDRWLIsA4P0N+k3Hpe1gOsEQPTq6wAKaeoZagAiHJvQpyTI
 wH8SCPdCIMEPez76mD/T/5HJzjoYYaHTvsUAIk+e1wuOEdr5suQEUh7QoPdwj1MP8dm5
 YpqHIjLgteqytzRwF3htz1Keu4C774M+JRfHs+dikJXwCJzYK7TNTKFVGk5k7xQy1wXF
 78nA2hK2lXBMgKppX7rLFd96HdglSJnW6cuCWNBPLSldq1V89NPuPdIpuAa5vTO2GFR+
 +JOw==
X-Gm-Message-State: APjAAAUMfBfTh2Uj/1mRHlMrcQN4q8GqNoV67pcph2+8DjSONUcDscjf
 mV9kAVYxNqhzIc4ViXMv+ic0Dw==
X-Google-Smtp-Source: APXvYqxMi0WkPdC/TIWQ/rEP0W+6WEwgY/rp8ZhYjwRr9PMekyUrfkMqryPcx5ziGSRNx/jQnRs5oA==
X-Received: by 2002:a17:90b:8ca:: with SMTP id
 ds10mr4474530pjb.139.1567003218534; 
 Wed, 28 Aug 2019 07:40:18 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id t9sm7295641pgj.89.2019.08.28.07.40.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 07:40:17 -0700 (PDT)
To: Christoph Hellwig <hch@infradead.org>
References: <20190827150544.151031-1-salyzyn@android.com>
 <20190828142423.GA1955@infradead.org>
Message-ID: <5dd09a38-fffb-36f2-505b-be2ddf6bb750@android.com>
Date: Wed, 28 Aug 2019 07:40:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828142423.GA1955@infradead.org>
Content-Language: en-GB
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
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
X-Headers-End: 1i2z7Y-006T7l-FV
Subject: Re: [V9fs-developer] [PATCH v8] Add flags option to get xattr
 method paired to __vfs_getxattr
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Hugh Dickins <hughd@google.com>,
 Mike Marshall <hubcap@omnibond.com>, James Morris <jmorris@namei.org>,
 devel@lists.orangefs.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Joel Becker <jlbec@evilplan.org>, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jan Kara <jack@suse.com>, Casey Schaufler <casey@schaufler-ca.com>,
 Dave Kleikamp <shaggy@kernel.org>, linux-doc@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, Chao Yu <yuchao0@huawei.com>,
 Mimi Zohar <zohar@linux.ibm.com>, linux-cifs@vger.kernel.org,
 Paul Moore <paul@paul-moore.com>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Eric Sandeen <sandeen@sandeen.net>, kernel-team@android.com,
 selinux@vger.kernel.org, Brian Foster <bfoster@redhat.com>,
 reiserfs-devel@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-f2fs-devel@lists.sourceforge.net,
 Benjamin Coddington <bcodding@redhat.com>, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, linux-afs@lists.infradead.org,
 Jonathan Corbet <corbet@lwn.net>, Vyacheslav Dubeyko <slava@dubeyko.com>,
 Allison Henderson <allison.henderson@oracle.com>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Gao Xiang <gaoxiang25@huawei.com>, Eric Paris <eparis@parisplace.org>,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 samba-technical@lists.samba.org, linux-xfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 ocfs2-devel@oss.oracle.com, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Eric Biggers <ebiggers@google.com>,
 Adrian Hunter <adrian.hunter@intel.com>, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, devel@driverdev.osuosl.org,
 "J. Bruce Fields" <bfields@redhat.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Sage Weil <sage@redhat.com>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 cluster-devel@redhat.com, Steve French <sfrench@samba.org>,
 v9fs-developer@lists.sourceforge.net, Bharath Vedartham <linux.bhar@gmail.com>,
 Jann Horn <jannh@google.com>, ecryptfs@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, Dave Chinner <dchinner@redhat.com>,
 David Sterba <dsterba@suse.com>, Artem Bityutskiy <dedekind1@gmail.com>,
 netdev@vger.kernel.org, linux-unionfs@vger.kernel.org, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, linux-security-module@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 David Woodhouse <dwmw2@infradead.org>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gOC8yOC8xOSA3OjI0IEFNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBUdWUsIEF1
ZyAyNywgMjAxOSBhdCAwODowNToxNUFNIC0wNzAwLCBNYXJrIFNhbHl6eW4gd3JvdGU6Cj4+IFJl
cGxhY2UgYXJndW1lbnRzIGZvciBnZXQgYW5kIHNldCB4YXR0ciBtZXRob2RzLCBhbmQgX192ZnNf
Z2V0eGF0dHIKPj4gYW5kIF9fdmZzX3NldGF4dHIgZnVuY3Rpb25zIHdpdGggYSByZWZlcmVuY2Ug
dG8gdGhlIGZvbGxvd2luZyBub3cKPj4gY29tbW9uIGFyZ3VtZW50IHN0cnVjdHVyZToKPiBZaWtl
cy4gIFRoYXQgbG9va3MgbGlrZSBhIG1lc3MuICBXaHkgY2FuJ3Qgd2UgcGFzcyBhIGtlcm5lbC1v
bmx5Cj4gZmxhZyBpbiB0aGUgZXhpc3RpbmcgZmxhZ3MgZmllbGQgZm9yIOKCiz5zZXQgYW5kIGFk
ZCBhIGZsYWdzIGZpZWxkCj4gdG8gLT5nZXQ/ICBQYXNzaW5nIG1ldGhvZHMgYnkgc3RydWN0dXJl
IGFsd2F5cyB0ZW5kcyB0byBiZSBhIG1lc3MuCgpUaGlzIHdhcyBhIHJlc3BvbnNlIHRvIEdyZWdL
SEAgY3JpdGljaXNtLCBhbiBlYXJsaWVyIHBhdGNoIHNldCBqdXN0IAphZGRlZCBhIGZsYWcgYXMg
eW91IHN0YXRlZCB0byBnZXQgbWV0aG9kLCB1bnRpbCBjb21wbGFpbnRzIG9mIGFuIApleGNlc3Np
dmVseSBsb25nIGFyZ3VtZW50IGxpc3QgYW5kIGZyYWdpbGl0eSB0byBhZGQgb3IgY2hhbmdlIG1v
cmUgCmFyZ3VtZW50cy4KClNvIG1hbnkgd2F5cyBoYXZlIGJlZW4gdHJpZWQgdG8gc2tpbiB0aGlz
IGNhdCAuLi4gdGhlIHJpc2sgd2FzIHRha2VuIHRvIApwbGVhc2Ugc29tZSwgYW5kIHdlIG5vdyBo
YXZlIGh1bmRyZWRzIG9mIHN0YWtlaG9sZGVycywgd2hlbiB0aGUgZmlyc3QgCnBhdGNoIHNldCB3
YXMgbGVzcyB0aGFuIGEgZG96ZW4uIEEgcmVjaXBlIGZvciBmYWlsdXJlPwoKLS0gTWFyawoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
