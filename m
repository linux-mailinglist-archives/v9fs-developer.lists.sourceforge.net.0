Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C54D6D3759
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 12:35:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1piv3F-0007QI-S4;
	Sun, 02 Apr 2023 10:35:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1piv3F-0007QC-2A
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 10:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4rER0+YPTrZweKFdE3WnkKZ3L63Ioi+A8mlOenPRndY=; b=j4arkPaiIUvH2rxSQN5w2EsARp
 4CXzCU4Ekl1Gvt7J1m6W3d+UAUTK6hziPoeeK4avAeV3UR9T7nW9EnGu8F9PgdB7wQ2r49AuyjnWL
 XqAKWjw6tVnb8mb0rAi87Nu7abrLWs1xvn6cDwARRJ0qPO7LxpbHhN1Ge//FB0iWXeIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4rER0+YPTrZweKFdE3WnkKZ3L63Ioi+A8mlOenPRndY=; b=ZAp8CVEi+6PenetBC+hOZ3wPLq
 IrjD1XwxZtugykFx7P3ri+E+1oGZVIZSEyZzV03A32LCKESHCoRVIGGWFQvaZZ2KBDP9pWPUd6Mez
 vb+uTqGii1lO0QTZXsWkmijQ5C1tFqgxfAOZy0dR+JhlwcivQOLfxncdPd3TYfdbl0Vc=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piv3B-0005Xj-1m for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 10:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680431705; x=1711967705;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zg1OHTHWiO0Fl0PxVnUnL4mHARomSjm0qo9g9w/xg6Q=;
 b=DUEOjABj1B1Bpq+cX1i2XcUOmYrgUityr9mgzxMsL93TNMBemiqeGvvH
 je2uB5vK5l6W9slpyudidJVUCvhWjZbjZ2c7N46hqWgJJMw6Bo5IFrD8Z
 c2K2u06YirDVh3H9vvMni09tUTe44XkH7YSMcQ6dA+r9F/YeFNZiXQZ5l
 3Qddqtz0cdYG84hC9EDTWov1ktm4w5frfuaM9ToB9cEIOsaVS4euTaCMC
 jqXRLUYQvHXfHTmodSrgkcU3j467kxbb3dyiowMzIEdhcWsQrccdzQ0RA
 /Eu2s+ucXV6O1GWJ2c9TL1gMgV+SXVyj4jWHtCQNnuDdYpT1PNMCuc+Vv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="325720503"
X-IronPort-AV: E=Sophos;i="5.98,312,1673942400"; d="scan'208";a="325720503"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 03:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="662887072"
X-IronPort-AV: E=Sophos;i="5.98,312,1673942400"; d="scan'208";a="662887072"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 02 Apr 2023 03:34:56 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piv31-000NMN-1A;
 Sun, 02 Apr 2023 10:34:55 +0000
Date: Sun, 2 Apr 2023 18:34:37 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, v9fs@lists.linux.dev
Message-ID: <202304021848.dGo1cazM-lkp@intel.com>
References: <20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Eric, I love your patch! Perhaps something to improve:
 [auto build test WARNING on 1543b4c5071c54d76aad7a7a26a6e43082269b0c] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1piv3B-0005Xj-1m
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Rework cache modes and add new
 options to Documentation
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
Cc: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Eric,

I love your patch! Perhaps something to improve:

[auto build test WARNING on 1543b4c5071c54d76aad7a7a26a6e43082269b0c]

url:    https://github.com/intel-lab-lkp/linux/commits/Eric-Van-Hensbergen/fs-9p-Rework-cache-modes-and-add-new-options-to-Documentation/20230402-071815
base:   1543b4c5071c54d76aad7a7a26a6e43082269b0c
patch link:    https://lore.kernel.org/r/20230401-ericvh-dev-rework-cache-options-v1-1-12d3adbdd33a%40kernel.org
patch subject: [PATCH] fs/9p: Rework cache modes and add new options to Documentation
reproduce:
        # https://github.com/intel-lab-lkp/linux/commit/8d563b947e70b7fe9a067ef3be10471a05452505
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Eric-Van-Hensbergen/fs-9p-Rework-cache-modes-and-add-new-options-to-Documentation/20230402-071815
        git checkout 8d563b947e70b7fe9a067ef3be10471a05452505
        make menuconfig
        # enable CONFIG_COMPILE_TEST, CONFIG_WARN_MISSING_DOCUMENTS, CONFIG_WARN_ABI_ERRORS
        make htmldocs

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304021848.dGo1cazM-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Documentation/filesystems/9p.rst:92: WARNING: Malformed table.

vim +92 Documentation/filesystems/9p.rst

    58	
    59	  ============= ===============================================================
    60	  trans=name	select an alternative transport.  Valid options are
    61	  		currently:
    62	
    63				========  ============================================
    64				unix 	  specifying a named pipe mount point
    65				tcp	  specifying a normal TCP/IP connection
    66				fd   	  used passed file descriptors for connection
    67	                                  (see rfdno and wfdno)
    68				virtio	  connect to the next virtio channel available
    69					  (from QEMU with trans_virtio module)
    70				rdma	  connect to a specified RDMA channel
    71				========  ============================================
    72	
    73	  uname=name	user name to attempt mount as on the remote server.  The
    74	  		server may override or ignore this value.  Certain user
    75			names may require authentication.
    76	
    77	  aname=name	aname specifies the file tree to access when the server is
    78	  		offering several exported file systems.
    79	
    80	  cache=mode	specifies a caching policy.  By default, no caches are used.
    81			The mode can be specified as a bitmask or by using one of the
    82			prexisting common 'shortcuts'.
    83			The bitmask is described below: (unspecified bits are reserved)
    84	
    85				==========	================================================
    86				0b00000000	all caches disabled, mmap disabled
    87				0b00000001	file caches enabled
    88				0b00000010	meta-data caches enabled
    89				0b00000100	writeback behavior (as opposed to writethrough)
    90				0b00001000	loose caches (no explicit consistency with server)
    91				0b10000000	fscache enabled for persistent caching
  > 92				=========	================================================
    93	
    94			The current shortcuts and their associated bitmask are:
    95	
    96				=========	=============================================
    97				none		0b00000000 (no caching)
    98				readahead	0b00000001 (only read-ahead file caching)
    99				mmap		0b00000101 (read-ahead + writeback file cache)
   100				loose		0b00001111 (non-coherent file and meta-data caches)
   101				fscache		0b10001111 (persistent loose cache)
   102				=========	=============================================
   103	
   104			NOTE: only these shortcuts are tested modes of operation at the
   105			moment, so using other combinations of bit-patterns is not
   106			known to work.  Work on better cache support is in progress.
   107	
   108			IMPORTANT: loose caches (and by extension at the moment fscache)
   109			do not necessarily validate cached values on the server.  In other
   110			words changes on the server are not guaranteed to be reflected
   111			on the client system.  Only use this mode of operation if you
   112			have an exclusive mount and the server will modify the filesystem
   113			underneath you.
   114	
   115	  debug=n	specifies debug level.  The debug level is a bitmask.
   116	
   117				=====   ================================
   118				0x01    display verbose error messages
   119				0x02    developer debug (DEBUG_CURRENT)
   120				0x04    display 9p trace
   121				0x08    display VFS trace
   122				0x10    display Marshalling debug
   123				0x20    display RPC debug
   124				0x40    display transport debug
   125				0x80    display allocation debug
   126				0x100   display protocol message debug
   127				0x200   display Fid debug
   128				0x400   display packet debug
   129				0x800   display fscache tracing debug
   130				=====   ================================
   131	
   132	  rfdno=n	the file descriptor for reading with trans=fd
   133	
   134	  wfdno=n	the file descriptor for writing with trans=fd
   135	
   136	  msize=n	the number of bytes to use for 9p packet payload
   137	
   138	  port=n	port to connect to on the remote server
   139	
   140	  noextend	force legacy mode (no 9p2000.u or 9p2000.L semantics)
   141	
   142	  version=name	Select 9P protocol version. Valid options are:
   143	
   144				========        ==============================
   145				9p2000          Legacy mode (same as noextend)
   146				9p2000.u        Use 9P2000.u protocol
   147				9p2000.L        Use 9P2000.L protocol
   148				========        ==============================
   149	
   150	  dfltuid	attempt to mount as a particular uid
   151	
   152	  dfltgid	attempt to mount with a particular gid
   153	
   154	  afid		security channel - used by Plan 9 authentication protocols
   155	
   156	  nodevmap	do not map special files - represent them as normal files.
   157	  		This can be used to share devices/named pipes/sockets between
   158			hosts.  This functionality will be expanded in later versions.
   159	
   160	  directio	bypass page cache on all read/write operations
   161	
   162	  ignoreqv	ignore qid.version==0 as a marker to ignore cache
   163	
   164	  noxattr	do not offer xattr functions on this mount.
   165	
   166	  access	there are four access modes.
   167				user
   168					if a user tries to access a file on v9fs
   169				        filesystem for the first time, v9fs sends an
   170				        attach command (Tattach) for that user.
   171					This is the default mode.
   172				<uid>
   173					allows only user with uid=<uid> to access
   174					the files on the mounted filesystem
   175				any
   176					v9fs does single attach and performs all
   177					operations as one user
   178				clien
   179					 ACL based access check on the 9p client
   180				         side for access validation
   181	
   182	  cachetag	cache tag to use the specified persistent cache.
   183			cache tags for existing cache sessions can be listed at
   184			/sys/fs/9p/caches. (applies only to cache=fscache)
   185	  ============= ===============================================================
   186	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
