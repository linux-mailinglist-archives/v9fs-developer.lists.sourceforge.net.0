Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E2963CCEA
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 02:38:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0C3o-0003fp-04;
	Wed, 30 Nov 2022 01:38:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <delivery-@muthihi.co.za>) id 1p0C3m-0003fi-Aq
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 01:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=88p8hkdfT2kyn9toKFa7AqjK1ZD7VEhrvqid2ycDoUE=; b=mvTZBmGsAxxmmCU49qsciGhlyX
 QXG4VC2pXs9VuigROd+/RRrSJ2lXuhydH9sLViEunfRc2D/bAiKu4bZyQd/4yWHtbOSTv2OlpxWM1
 G5/V3DOj5IvpXy3AnXXXgxsBVuNBbYEypNkjfFlYOFckWPzDNA6LSjkvwVmj03uSiD6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=88p8hkdfT2kyn9toKFa7AqjK1ZD7VEhrvqid2ycDoUE=; b=l
 8lDcTpwXD281yx+bzxKGVbZxZIUOFARWPFvxaTZSedRXccG9zsEoZZNIjYRrdRSpVSHVJe5zIRyTF
 SDNaM7Wn9xiHNFSjC392r6rghkFkU/rTx6SU1vnm8sl3VfFsYRHTHGX7+5h6TJojBQvj1w0++z9PN
 /vvGKmwN3GnIfMq8=;
Received: from outgoing19.jnb.host-h.net ([129.232.250.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0C3l-00089B-BT for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 01:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=muthihi.co.za; s=xneelo; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:From:To:Date:reply-to:sender:cc:bcc:
 in-reply-to:references; bh=88p8hkdfT2kyn9toKFa7AqjK1ZD7VEhrvqid2ycDoUE=; b=LZ
 MPAwnOU/G+QEM3HpzaR4J+wLWU9twn6FLZ0TE7AGI+Z+CDswRoz0tcoUzfeVTWe3NQ+67Ry9q8w6m
 ic0t9HaNZeprSJTDGl6dRIIWLD/7PLsFi5wJVNsKSV37LVxJC9hr79Az9tqox4qLAQ4MwpvIy/SSG
 GesBlDUbwDorhx2AG7vM7le58R3ViOowWWdIL9mQH62Im67TXm93IYivz9uwuJLWTXUCYjUjW8aqg
 WGxKSxQWrNMmexGSFW4bpOU+SimH6GVEEE4ljDXxykbJm4PSqUzLk5IwEEldMM0syFU8QiFYkRv3G
 NaZGS+GRDj5anpsRQfe1pgSfxdgdU7uw==;
Received: from dedi701.jnb2.host-h.net ([129.232.138.161])
 by antispam9-jnb1.host-h.net with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <delivery-@muthihi.co.za>)
 id 1p0BOb-0004OQ-QD
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Nov 2022 02:56:19 +0200
Received: from localhost ([127.0.0.1] helo=dedi701.jnb2.host-h.net)
 by dedi701.jnb2.host-h.net with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <delivery-@muthihi.co.za>) id 1p0BOb-0007Jo-ED
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Nov 2022 02:56:17 +0200
Received: from muthimhmmj by dedi701.jnb2.host-h.net with local (Exim 4.92)
 (envelope-from <muthimhmmj@dedi701.jnb2.host-h.net>)
 id 1p0BOb-0007J9-6A
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Nov 2022 02:56:17 +0200
Date: Wed, 30 Nov 2022 02:56:15 +0200
To: v9fs-developer@lists.sourceforge.net
From: DHL-Post Office <delivery-@muthihi.co.za>
Message-ID: <f9402eaf540448812e9744e260ab9610@muthihi.co.za>
MIME-Version: 1.0
X-Hetz-Sender-Domain: muthihi.co.za
X-Originating-IP: 129.232.138.161
X-SpamExperts-Domain: muthihi.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@muthihi.co.za
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.57)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9iz5YkS16UG0OkCIPs5ZotPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5y/5JkvAerCH5kaoijes7hW/qNYSFxeoRLf+vzn6n4wwLye
 Cz8SULa9StimO+UQl85SJfCqJdFXxk/K7rnEoB+Mngqo6HTfPcmeXUhusULdbEsSEV1TJRbos/2n
 BTXnl7fjONTPQJih27SYSkbIchRjiCsJyqSmvP2BysP8HrSPvpNigsDg0aDqoVJ2W2TmFFQrnvUy
 zoTfAGEbL5I354EA3MoVXVTqUoZz5dqEkoZI0LeMPUhTBWui6U/2qinoPDthn6sps0oXop0Wpl2m
 +lnlLYyKfoR+hbZIJAc+0m+mU5EyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0fCHU9vTqdytvd6BRYxRvoBPRsX59+IilAmDoggW0Xd36+MR9Nol7RZuMNLAjhWw
 OH8CTlQwpHklpufi6pZ4ylW7HC/gj7IJEemZf/LYWzYbRgFnzGg9rgSSO4p0kGP/3izoJDM55WJG
 VWcFLzKvCHLdZh03ExTqDquACpNsmDrlcntZzD+8euQ3PTJH+fGZGHMcN6qoXPjenLhIOF1oeRby
 Fq2+OqN9onZqqn2Wn0tGhM0z+bPAB058UPFkexJjl//3jEnh9DX83A9jvOA51Ci9P+5Lf0oV1WuF
 nNMdSZz/eBksJ0GzgEY832zb4/bETantKr6+crm+rffkaQ6ZgOgH3UhxXhTfivfi66RFRKAuwoLs
 eSqbKNkjZRhca6v4rDNaLlDuKqW9s6fPo80xeRe9QxTenMZW0NSwPez1XT0mXPWlFdaGOH191uXj
 gjQN/axnofP7SMuvIpE7OnD6/Unt4EmOPuk17NPTUypBc4jlZNme6ty1U6+uKYFyh4suOAzJ1QAQ
 SXeybBnIuIGwSsDt+6obJL6EKDZrBJjC8BbyQ/pnESFS5Z4igQsZZMOCrDbI9GTcfUTgA1F03UGU
 8jnPmYYn3IfEbwlHKDdrfjaSfEPFr2oCJea7Q9gw0YpPuQ==
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  DHL Express   Hi, 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: muthihi.co.za]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p0C3l-00089B-BT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your package cannot be delivered
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoKCgpESEwgRXhwcmVzcwoKwqAKCkhpLAoKCsKgCgpXZSBpbmZvcm0geW91IHRoYXQgeW91
ciBzaGlwbWVudMKgTm/CoDU0OTYwMTMxNTQwwqBpcyBzdGlsbCBhd2FpdGluZyBpbnN0cnVjdGlv
bnMgZnJvbSB5b3UuCgrCoAoKWW91IGhhdmUgdG8gcGF5IHRoZSBhZGRpdGlvbmFsIHNoaXBwaW5n
IGZlZXMgdG8gc2hpcCB5b3VyIHBhcmNlbCBhcyBzb29uIGFzIHBvc3NpYmxlLgoKwqAKCkFzIHNv
b24gYXMgd2UgcmVjZWl2ZSB5b3VyIGFkZGl0aW9uYWwgc2hpcHBpbmcgZmVlcyB3ZeKAmWxsIGJl
IGluIHRvdWNoIHRvIGFycmFuZ2UgZGVsaXZlcnkuCgrCoAoKwqAKCsKgU3RhcnQgRGVsaXZlcnkK
CgrCoAoKUmVtaW5kZXIgOiBUaGlzIHByb2NlZHVyZSBpcyBtYW5kYXRvcnkgdG8gcHJldmVudCB5
b3VyIHBhY2thZ2UgZnJvbSBiZWluZyByZXR1cm5lZCB0byB0aGUgc2VuZGVyCgrCoApZb3VyIGdv
b2RzIGFyZSBhdCBvdXIgd2FyZWhvdXNlLgoKS2luZCByZWdhcmRzCkN1c3RvbWVyIFN1cHBvcnQK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
