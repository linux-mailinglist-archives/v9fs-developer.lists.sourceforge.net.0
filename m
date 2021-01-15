Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FEB2F6FD7
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Jan 2021 02:10:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l0Dcz-0003Gd-ME; Fri, 15 Jan 2021 01:10:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <inbox@leefallat.ca>) id 1l0Dcy-0003GV-4a
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jan 2021 01:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Cc:To:From:Subject:Message-ID:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tmb6nORV2YUDZMCpe7hQ7vH/TGgtPzw0WDbSHfwjx20=; b=CITpFufYuYfzEurWsDsyxnuTS1
 TLZNYJoKUSbHUtEoNL8sGrirLrUULj0FJGeYgVeFUfVBKkfDQghd1M7sfu/+wcy0iYqpa5tdyeJ2B
 GeRhgDJSRLxFRpzZFtuMblU7e9pBSG4zUpA0obKlLjfrB67LN333sI1okbQ5rfU+vw7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tmb6nORV2YUDZMCpe7hQ7vH/TGgtPzw0WDbSHfwjx20=; b=QeM5yGJBJ/qBCnmCrRqUvnBZHJ
 Pk29N/CA/9GmL8LKC7C84F5ZiXAbJ8z7g+kGYpxAGzD2zoJw2SVaY4W++WWPvOv69M93sIyq7nGoU
 Q5ULhsMozoXty7c82icpdCMNW+jG5uymdyaEeIMkM8A5KERz0euqcDZ5yFYSqut/9ev0=;
Received: from out1.migadu.com ([91.121.223.63])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0Dck-002HGD-C3
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jan 2021 01:10:12 +0000
Message-ID: <903e091e79698570e8b2f8892b0c8a98e82223b3.camel@leefallat.ca>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leefallat.ca;
 s=key1; t=1610672982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tmb6nORV2YUDZMCpe7hQ7vH/TGgtPzw0WDbSHfwjx20=;
 b=tafBfy2uK3c8IKc8aE9nc6BMBtqQD2bOEBtbdhfHr0eIlTHSyxYVkIvOnFePq67jx2Edeh
 7e54uOmKRlgk6NL86qijDG5yWwDgJVp95T8NnjofKgQVxxwj2RK0+bJTIkDRSack1Gvd2p
 IAtjnvlDQdPRwVYdG8641idOLKLvkfVke5rlTbSw2WC4ZYlaXjRrlgzOkdXNXhRgcfKwoW
 j6tvHLSp4N4dEEyw5Ui0wPjH5dZKpueIl7nPMUiIb6G2cL2VXFGgx3o+ODUoZcPh+s0DK6
 cdfDAYb7Nh7E6qXvGlonMKJGhaPcPfqYF7pKvApO741V0m9kVHb2NmeArCiqaQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Lee Fallat <inbox@leefallat.ca>
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20210115003439.GA7955@tyr>
References: <8348aae300bd225096231aeeb08ab92358385a08.camel@leefallat.ca>
 <1f86c93f694d752786abb06d717cfa65afbc0cf9.camel@leefallat.ca>
 <20210115003439.GA7955@tyr>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: inbox@leefallat.ca
Date: Fri, 15 Jan 2021 01:09:41 GMT
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.121.223.63 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [91.121.223.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0Dck-002HGD-C3
Subject: Re: [V9fs-developer] v9fs not responsive with Rflush after single
 Rreaddir
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
Cc: v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ah weird, the original email is here 
https://sourceforge.net/p/v9fs/mailman/message/37193575/ and I see your response
is in the mail "thread" too. I'm just not quoting the email.

Thank you for the reply! It sounds like the work which you are doing will
resolve my issue!



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
