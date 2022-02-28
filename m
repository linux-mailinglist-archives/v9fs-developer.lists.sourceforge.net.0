Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8354C72F1
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 18:30:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOjrN-0007e0-Is; Mon, 28 Feb 2022 17:30:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <droyo@aqwari.net>) id 1nOjrM-0007dt-MC
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 17:30:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/sxoPFEe4FTJe+zPcUxKH1br50sUrFQmIWfLinYkaZY=; b=ae6/fM6uZIKZFWjI24Z1Jw+cF9
 NXWI8VtNnK8nr2ksaL/AHS1iYpYeFbTVhX9gZzr7jwhdFDtXucAWOSoe+yg16KhyEV7Rg+r2x7JT1
 NIblSWlWLLNbXOqLI6P3ISgZT8jPG/0YiCnRDecLGJIeLmwOL70aVVaibaLizg9WR48A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/sxoPFEe4FTJe+zPcUxKH1br50sUrFQmIWfLinYkaZY=; b=HIwOiRKqrTmupmOlBq+9/3uCrg
 yrd/cbQXcJRPjQ0YeVKySUsIaESUpeoP3XIH/J2hMjE8rGdZmRq9iXvXSNJfsWMTmbMl8TJVXA+bs
 wAaN52fkxHEECiPanF0chERKcIDnQnr0t9M4BFKvCBwdfdLdPrTyrjv+tx0azR/jglOA=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nOjrK-0003FY-4P
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 17:30:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5C6A45C021B
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 12:13:23 -0500 (EST)
Received: from imap43 ([10.202.2.93])
 by compute4.internal (MEProxy); Mon, 28 Feb 2022 12:13:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/sxoPFEe4FTJe+zPc
 UxKH1br50sUrFQmIWfLinYkaZY=; b=P+jUWY97qd/iF+QfYjVzdvsADpzGZ/0T2
 te+BB/WN51Ku/qmQwDSCW2Bgn4DrW7vNPlMtXU5V0/s2QBr7aXp3aeDFpC8f2ZDB
 ija/aoXkgPwN+nNdly4Jso37y7jlSMI77F4moLguFigpnMzyPyELuM+NA6k+OIdP
 8n8Q+mYg4BN6BDKgMYNKfClUxQOUgJlKbnvS56+jlVFxnSqjxN9Q3tZz/XLAXjZM
 d0SzGu0PKouI6W85pwbCmsla6zBsYIasZCLAmRa9hslwrJfRxbskWBM0rekhehIM
 mkuTQl/z8u8uh5UdGHW1CdJt8SdnaLPzsNF3yR842csDaotgvscrQ==
X-ME-Sender: <xms:swIdYvqD37Sp4FM_Y3nQSzWunoDtXLcHkmYTdFSZGXraOFSyQJIxLQ>
 <xme:swIdYprpK5LLG81vdbnYFtDoJr6yjNxhwNa0mozO4gb71qVwrCE4kKNYa5-CcIJ2g
 4JCjgmZmzYweNzYnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddttddgleejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
 ertderredtnecuhfhrohhmpedfffgrvhhiugcutehrrhhohihofdcuoegurhhohihosegr
 qhifrghrihdrnhgvtheqnecuggftrfgrthhtvghrnhepueeiteekkefgleevheejfedvge
 dugfekfefhgeefjeejvdehgfelvdfguefhlefgnecuffhomhgrihhnpehgihhthhhusgdr
 tghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 gurhhohihosegrqhifrghrihdrnhgvth
X-ME-Proxy: <xmx:swIdYsMq643F8mqWvhBjhmxfHKHmANuJJ0O6sGXTo9xw15pS3TssYA>
 <xmx:swIdYi7TM4AeeJE7ArgxPp-U8pk6KbCjOo3vpjkvCiFSr1Dy7cUYVQ>
 <xmx:swIdYu4CePS5PddhS993y0PCk6tHlZKV3IMZ4kVntyCg3PkcxnykFQ>
 <xmx:swIdYgG0OgmygMKcVZbu2euK_r37rNTRAnYm6uuQniFNxmriJcSrNg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 00091AC0E99; Mon, 28 Feb 2022 12:13:22 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4778-g14fba9972e-fm-20220217.001-g14fba997
Mime-Version: 1.0
Message-Id: <231b6751-861e-4489-a5f2-0ca924d81446@www.fastmail.com>
In-Reply-To: <Yhlnpcata/r6oJg+@codewreck.org>
References: <CAP6exYLMoSENG2dthBCaMfWY1D_obLuzN+FAUOSpCsdxye4_GQ@mail.gmail.com>
 <Yhlnpcata/r6oJg+@codewreck.org>
Date: Mon, 28 Feb 2022 12:12:39 -0500
From: "David Arroyo" <droyo@aqwari.net>
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ron minnich wrote on Fri, Feb 25, 2022 at 09:35:50AM -0800:
 > You, like me, may have gotten a bit tired of the "9p is slow" folklore.
 > > This lore is further accompanied by the "because 9p requires I [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nOjrK-0003FY-4P
Subject: Re: [V9fs-developer] Make 9p fast
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ron minnich wrote on Fri, Feb 25, 2022 at 09:35:50AM -0800:
> You, like me, may have gotten a bit tired of the "9p is slow" folklore.
> 
> This lore is further accompanied by the "because 9p requires IO
> serialization" claim.
> 
> I've run into both these claims in Google in the last month, and there
> is even work on a replacement:
> https://github.com/google/gvisor/milestone/6

The justification given in the github repo (and expanded upon internally)
is a bit flimsy. However, to me it looks like in the specific example of
gvisor there is just a mismatch between 9p semantics and linux semantics
that they don't believe is worth working around. For example, they
describe opening a file with a path of length N as requiring N+2 rpcs,
N to walk each path element, 1 to create the file, and 1 to walk to
the new file to get an unopened fid. But 9P allows you to walk multiple
path elements at once, so the constraint is not coming from the protocol
itself.

9P not being "economical" with RPCs is only a negative if you assume
1 RPC requires 1 round trip. There is nothing wrong, from a protocol
perspective, with issuing this sequence of RPCs to create a new file:

0001	Twalk	fid=0 newfid=1
0002	Twalk	fid=1 newfid=1 path/to/dir
0003	Tcreate	fid=1 name="myfile" 0666 0

I think you can "fuse" several command sequences this way. Clients could
emit them at once and servers could handle them at once. You can add a
prefix to the tag for RPCs that are part of the same "sequence", and this
prefix could be used to find resource cleanup routines to handle failed
sequences. The simpler low-hanging fruit would be the read/write RPCs,
although writes would be harder in the face of errors.

Obviously, if the goal is to reduce round trips, this approach is harder
than making your protocol match your local interface 1:1, which the
proposed replacement appears to do. And unless there is some "killer feature"
that is enabled by using 9P between a VM and its host, there probably won't
be a lot of motivation to make it perform better :(.

But I agree there's no reason the protocol should be a bottleneck. I'd be
interested in helping. Though I've never contributed to the kernel or gvisor,
I do enjoy writing 9P clients as a hobby :).

David


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
