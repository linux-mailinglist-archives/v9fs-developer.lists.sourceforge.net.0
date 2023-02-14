Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF0695F59
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Feb 2023 10:36:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRrjD-0005ns-SB;
	Tue, 14 Feb 2023 09:35:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pRrjC-0005nl-GW
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Feb 2023 09:35:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WPNAPgJOGwrjbjhKNT4dc1zFH1lpGuqzCM/8y0TMxek=; b=BPrFSkYCTzdOD8Rj4SukLLjGBu
 cghv6B/v1NNES6T0vkyGquFrakn2phQsXBfF27bTTXOVQJvUx6EF5vBFfZTS9bFuU+ZeRFgkyMtny
 mAvkuqxP44t2AMF1kGkGVNvMwB36IhHZ8DjYH5jh4W8QpZCF6rlKoRjSE0LtsjpwLkZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WPNAPgJOGwrjbjhKNT4dc1zFH1lpGuqzCM/8y0TMxek=; b=L+7d5dSQc/RV311geCxcN/fZKk
 c9jkavWZPr/lVhwKrNw5xfI2/1s524UGVn8Wyzm9Ar928O2Rrh+y2amEQjnXk/6adf6fY6owB0Ajb
 ry1jEgdVLG4zW9mZGdQ48SNMyczyw9M2I8Yo0paHvtgB8VTIQzy82TrzUNYApUaDvCAo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pRrj5-0000rt-Nu for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Feb 2023 09:35:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=WPNAPgJOGwrjbjhKNT4dc1zFH1lpGuqzCM/8y0TMxek=; b=qpSxV78fD7dv4ofdbUd0tcnwfI
 EdWll8OWfU83zwE2sE7+G+rTwE+Gc2yF81f+su2F2DJGHehyP9INoTuGKrVs+7gmalmPBQCWItjAb
 df02sUgVuMVyfiC3XkWUZGLy7RKS6yKMAqxB9UVSM4cjoQOJ/zpS3mBjL8IMjDo6qkSvgjqABWtWA
 Ok+GQK5GwHNcJ8saUcTfkiMcqKaIiSUQJ7/T6mgmbcCVdHW/WHAg1c9dRmvDWjB+PEONjQGecgCGv
 YqOitcxHCz/AmK8wjGLoRl3WCBmgbX1VvqaR+M6vPJwutPgDb2Q4S9Hwd8oo/HOhQo/fwibnzikl1
 OBZ3VI7Z3wuE3+Ay+Nj6dj2/TetJAbxEMa1afuHn/vIQMS8S5wB+Nl5P27NkHMHH0DkCzgJ60IN4e
 IoaGh26IQsc7Y9S5vprV+iMVHy2UogPZpxSff5+Szr6hZw4HnCDGVBdNRDoKJKat2RTACgx5NkrpD
 uCg/80/O7jdhp353r2gqY7zMTDa6iQbvZtpRxgjz/CRu5N+/55YdK/rGeaFO6THrnAe2p88aP1P67
 QVzqfflJyBRhEo/DWUit3/RlXag0tgqmgyT8V1FrzHfjkl2NYbc+fJavCvpd2s8onfVKK8ZEZcQzR
 vT85khSdf4Nv4iUU64ZkN0YW68PhK5rooZkZP+X1Y=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 14 Feb 2023 10:34:36 +0100
Message-ID: <2526146.SOovFYVi4y@silver>
In-Reply-To: <Y+q7vvc2Sek8d7wG@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <2973654.udxrvWzM6v@silver> <Y+q7vvc2Sek8d7wG@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, February 13,
 2023 11:37:50 PM CET Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Mon, Feb 13, 2023 at 07:45:34PM +0100:
 > > On Monday, February 13, 2023 7:26:54 PM CET Christian [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pRrj5-0000rt-Nu
Subject: Re: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
 looping forever on signals
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Jens Axboe <axboe@kernel.dk>, Latchesar Ionkov <lucho@ionkov.net>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Pengfei Xu <pengfei.xu@intel.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, February 13, 2023 11:37:50 PM CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Feb 13, 2023 at 07:45:34PM +0100:
> > On Monday, February 13, 2023 7:26:54 PM CET Christian Schoenebeck wrote:
> > > On Saturday, February 11, 2023 8:50:18 AM CET Dominique Martinet wrote:
> > > > I've been working on async RPCs for a while and never had time to debug
> > > > the last issues this had, but by limiting the async clunks to failures
> > > > the impact is drastically smaller and I've not been able to reproduce
> > > > any more bug so far.
> > > > 
> > > > This will require some more testing and I'm tempted to say this is not
> > > > worth rushing this into the merge window next week-ish; the new problem
> > > > Jens reported with task_work isn't really new and I'd rather get this
> > > > right than rush new bugs in given the sour experience I've had with this
> > > > patch series... Hopefully it'll get in this time.
> > > > With that in mind I plan to take the patches in to my -next branch after
> > > > the merge window, so this has time to get reviewed first.
> > > > 
> > > > I'd like to measure impact on performance as well, but really spent way
> > > > more time on this than I already have, so that'll have to wait a bit.
> > > 
> > > I have not observed performance degradation, nor any (new) errors. So for
> > > this entire series:
> > > 
> > > Tested-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> > 
> > Sorry, strike that. :-/
> 
> Ugh! thanks for the test, I'm not making much sense of the trace (folio
> wait bit means some background write isn't happening when flushing
> before the setattr?) but I'll try to reproduce and have a look
> today/tomorrow

Yes, apparently it tries to write dirty pages of the mapped file and keeps
hanging there [fs/9p/vfs_inode_dotl.c:586]:

int v9fs_vfs_setattr_dotl(struct user_namespace *mnt_userns,
			  struct dentry *dentry, struct iattr *iattr)
{
	...

	/* Write all dirty data */
	if (S_ISREG(inode->i_mode))
		filemap_write_and_wait(inode->i_mapping); <-- Hang

	retval = p9_client_setattr(fid, &p9attr);

	...
}





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
