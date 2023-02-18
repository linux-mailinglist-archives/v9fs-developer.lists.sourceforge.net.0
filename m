Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF0969B89A
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:02:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTIAl-0007tu-Hu;
	Sat, 18 Feb 2023 08:02:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTIAj-0007tn-B3
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xnzLbTiXqlMf+/EQqFeN+eC4zTGzFsvB7LNLEwOsaew=; b=RFAsr/MLXsIxdEvbN702ptOF91
 DvgHN4JlvVM/JEJYYmfZLNmrB3UGC1fzUR1gIz2aMJQvSfA/zrsKw5pwzzO838/SECtqxWJCz30uE
 JWJKojwTWlECVN0sew5bz1V9osi/7XpwSW8lPTOfz1WY8EzYuhpIg5lBswqzabzKCrqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xnzLbTiXqlMf+/EQqFeN+eC4zTGzFsvB7LNLEwOsaew=; b=ZI+lBTHlUqPz5UBs2I7aIXte5T
 Q9aVE8Bv02Ml8fO5yxQab2PBLEjfzHE3ZnvS4vV7bAw+oIPVRrNyib6Q65XBRMS7bYOmnfvDRfz/N
 tu+0bpdoFLm6kNdWYCmECjAH1GaBkE2KC2yCoBsZRQVZpyXbnxpneydBj/kn53ZZt5Jo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTIAg-008EZf-MH for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:02:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 39EF0C01C; Sat, 18 Feb 2023 09:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676707352; bh=xnzLbTiXqlMf+/EQqFeN+eC4zTGzFsvB7LNLEwOsaew=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TWObbccqUVwnrnZKbKh6ZOWPmxNbmmXFuJKxCQJiUCfwN4dIx+u4amdec2aV7ZcBU
 Ng9jlkp7i3ijPeMF09zSK2caIBvZ97y3k7qafOTwLJX9d2xrUXxyxs/u5DsWbtXySG
 EHatYpEc/Fjo+BGutf9PWyR930b69g0TEJrc7xTEUMggcZdvphhm3JRNbrbaNb5j+s
 /faOD2oi7lMzHvqTFevkcWxd+pUp/nme98TniQA3a0FJMo+nw2mQZQ9/ZaOrko4Tsp
 APT5By8dB71S/Uso2uta8uPWyInsdGgCteTP9EFla34+k9LXgWIG79d5+7CvKF3w6c
 twOZbmaXWZBuw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id ECF36C009;
 Sat, 18 Feb 2023 09:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676707351; bh=xnzLbTiXqlMf+/EQqFeN+eC4zTGzFsvB7LNLEwOsaew=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A7LOd713p3DcFe5glsQv0d5pUSxWT7E4CabcHHS5oRu8saRN/ArmdYQHWLhtYXxuG
 rvwtEuwJXHQdPNVeT5XEeVR+NktSxUeqXiKpnusdCH68d2PL52XiVQq0yPSfyhq0OK
 pjc+Dctu2F+XfM2JN9EGd+n36OaU7qV1lFjIsKMRYil9SaX205YsEP2v4ZvNqG1Agx
 YO7mC17LhFaTKEJC/NnB/fYCUHI17W+vMrD4xE2ohxEO269duy46f5FTAE+EkzWUQ0
 OEroBfYuWUpZErsQvmwzUdLEQyYW5WLc2Khy7o14oBhwIZ6RJr1YdStialfiaC2U21
 sbeoRMQmMnh5g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a6e04029;
 Sat, 18 Feb 2023 08:02:02 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:01:47 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CF64nDuhoJtCmj@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-7-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-7-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:18AM
 +0000: > We are supposed to set fid->mode to reflect the flags > that were
 used to open the file. We were actually setting > it to the crea [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTIAg-008EZf-MH
Subject: Re: [V9fs-developer] [PATCH v4 06/11] net/9p: fix bug in client
 create for .L
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
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:18AM +0000:
> We are supposed to set fid->mode to reflect the flags
> that were used to open the file.  We were actually setting
> it to the creation mode which is the default perms of the
> file not the flags the file was opened with.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

I was about to say fcreate has the same problem, but TCREATE's mode
actually is the open mode (0 (called OREAD), 1 (OWRITE), 2 (ORDWR), and
3 (OEXEC)) and dotl's create is called perm :|

I guess that's where the mistake came from... Good catch!
(and there's also p9_wstat's mode which also is the perms to make things
more confusing...)


Anyway,
Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
