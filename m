Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A05E79ED933
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Dec 2024 23:01:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLUlk-0006LV-Dw;
	Wed, 11 Dec 2024 22:01:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1tLUlj-0006LP-6e
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 22:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R3OGAQ5vsTFqn13bOxJ7t9i7h4BntnMNyLupbofgMFg=; b=BLjQ7jM8b/RGvFfOFYBmKX1rby
 MsblX5O+S2iZOPImBinVSYOdlfrh64Gm/2XvIhZs20PQC+gvWs81EoHkcHf/x/A7BEuwFDU2ouQiR
 FLWZ/jNCjnP4XD+WTPmCM8vGaTHi2l3AATBRjvMLZH08cxWX85/5kIV9F8A77/+hsae4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R3OGAQ5vsTFqn13bOxJ7t9i7h4BntnMNyLupbofgMFg=; b=ilDEDdeqpXlecFyQqp67pp8k+w
 w0YEmG26MGyQjXw1w2tZqK3ISli1sv38DMphCHBRypjXZAsL9x/bHHmpsvPSRAU46acklNbtvCncg
 aJrFgA1EglL2gj3tiAgFPBLG9tTwfJMQDw0zsuvASlNKruuwV8wxnpv3ldF7k4FF5zDc=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tLUlh-0000Nm-Oz for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 22:01:18 +0000
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-a9ec267b879so1424955366b.2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Dec 2024 14:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733954466; x=1734559266;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=R3OGAQ5vsTFqn13bOxJ7t9i7h4BntnMNyLupbofgMFg=;
 b=ASdqtl5Py550WnUC9hz8qXNFkhb72g649H32xK6mbE8xuLHNkUr90Alv9RgE2a/hi2
 kr/0glFhh9hw3nmXtJKR7AEpPdfi/m/SQZh6QX9/3Monh+/2xU+gbJrtgZgHQjMDLg3p
 iXc9qMfJ7ylY+7vQOSZIXsx3woxyV1a70SerI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733954466; x=1734559266;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=R3OGAQ5vsTFqn13bOxJ7t9i7h4BntnMNyLupbofgMFg=;
 b=JxvhitQVOE474xIaCwkcl5qiis8CH+2FmquBkQ7xn/ngDbwDuKkHnN/2JQVCpEwsjj
 wpTrk81AEQ3p4cl0QuFUL+2/qzern4t2CTr6wSH66pM4xbNYr3rogLc+XDdcP95OyqD5
 +qZAYOKA9WCiGjm57IFGmlyrH4h+7JJ0r5MyBMDUZTQQ6N/c+7qiktPOQLumIoTLOJTw
 BYyIUVSPOLQbsev2yYlH4d1Z1xQvHLMvZc7UOm1wDsojpzue9NmDGo95BCYhUU3q6WGj
 FYu0fvnenYSNzqt+MaSOkB+8ZirenbYRPCKrT8Dz4tm+sDkQzsYO9C9b30njDksrlrzT
 tBvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRPKpTXnIfRcJlmJmAlMwnHJLZnkgDgPvjE4rlQk4tOrIpQ+WiIEllmy4a3OFGqhcK/lkwqWWHnv0LYuFeKw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx2UMcuMIJcq7aK1YlTs+xy+g2vFAD1c+8zjm2E06jiw9QOoYzv
 GXp7J3+dnyIqicBhTOUxyt6W4yCt5aK33xRFR+V4+0M2yBBMK8KhZWVxhwFQvzoE1dprNN+X65o
 E+8o=
X-Gm-Gg: ASbGncvgbmG0+uMvKKVzoXE3mETcRWZ/aMg7808XVbY6Ne6bBRp2Pd9URDZKdW6eItS
 oDN9o4dY1BWvkkXpq2fNLJxuSmwqjC+s11i47Cu3anc48FDJH3IK47RTkx2yWoE409pCP6ISST9
 qZxl1ZPJcTgX5SE7yN4AYXa2VKGJWi8vEfeDU72GOuMTvxxwL1W+QVDi+ETanQeIccS1tNsB29F
 VDkA/w11Z1sTdF6dRxs0m05hg20JLaenZy8YtZM6qB3P0XnScnxau63FEPuqIfFndJBalD/eGNj
 /xunqD7y/ZaXUe8y4zfzRdMtwSq6BI4=
X-Google-Smtp-Source: AGHT+IFQsaLWCCgWS3V/JmHRUv7Ubu1RD+fSNUt+51ljuE5380r1J36wq5fD8HD5wzNEoX3rM9lW8Q==
X-Received: by 2002:a17:906:30da:b0:aa6:7027:7b01 with SMTP id
 a640c23a62f3a-aa6b118272bmr366627266b.20.1733952763770; 
 Wed, 11 Dec 2024 13:32:43 -0800 (PST)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com.
 [209.85.218.49]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa68880b3f7sm510083566b.92.2024.12.11.13.32.42
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2024 13:32:42 -0800 (PST)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-aa6a618981eso430305666b.3
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Dec 2024 13:32:42 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWF2+rz4VfAj6PAmdkSxfXDj1S/4PsepeZgfjLku1+x3E3Rt43mbE2jt2xQGWPiP4bFo7oU6UNvk9Hq7JSQrw==@lists.sourceforge.net
X-Received: by 2002:a17:907:7747:b0:aa6:8935:ae71 with SMTP id
 a640c23a62f3a-aa6b10f5d3amr449688366b.12.1733952762458; Wed, 11 Dec 2024
 13:32:42 -0800 (PST)
MIME-Version: 1.0
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
 <20241211200240.103853-1-leocstone@gmail.com>
 <Z1n-Ue19Pa_AWVu0@codewreck.org>
In-Reply-To: <Z1n-Ue19Pa_AWVu0@codewreck.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 11 Dec 2024 13:32:26 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiH+FmLBGKk86ung9Qbrwd0S-7iAnEAbV9QDvX5vAjL7A@mail.gmail.com>
Message-ID: <CAHk-=wiH+FmLBGKk86ung9Qbrwd0S-7iAnEAbV9QDvX5vAjL7A@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 11 Dec 2024 at 13:04, <asmadeus@codewreck.org> wrote:
 > > Christian Schoenebeck's suggestion was something like this -- I guess
 > that's good enough for now and won't break anything (e.g. ACLs [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.46 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.46 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tLUlh-0000Nm-Oz
Subject: Re: [V9fs-developer] Alloc cap limit for 9p xattrs (Was: WARNING in
 __alloc_frozen_pages_noprof)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, Christian Brauner <brauner@kernel.org>,
 syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com,
 Leo Stone <leocstone@gmail.com>, ericvh@gmail.com, v9fs@lists.linux.dev,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, Fedor Pchelkin <pchelkin@ispras.ru>,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ericvh@kernel.org,
 Seth Forshee <sforshee@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 11 Dec 2024 at 13:04, <asmadeus@codewreck.org> wrote:
>
> Christian Schoenebeck's suggestion was something like this -- I guess
> that's good enough for now and won't break anything (e.g. ACLs bigger
> than XATTR_SIZE_MAX), so shall we go with that instead?

Please use XATTR_SIZE_MAX. The KMALLOC_MAX_SIZE limit seems to make no
sense in this context.

Afaik the VFS layer doesn't allow getting an xattr bigger than
XATTR_SIZE_MAX anyway, and would return E2BIG for them later
regardless, so returning anything bigger wouldn't work anyway, even if
p9 tried to return such a thing up to some bigger limit.

No?

           Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
