Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E6B77065
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 19:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vVsfzZmETVvsGn/v6fC4wLwR6XC8+xY8CiPA2s4P3cY=; b=LSKitcS6Qb/sCbthuZyYnKkZJ
	LwV83+ceuwQhhxRFnv0IOvuSfGj1XPv90az5pSKM+PIX6YTvFR/m/bF3kPWoViP1y9w3SPc1v4JkF
	7k3KXFSUPOp42S1ge83OrmsSNgDn9pmw1dpRd0xyrFjiTrtp7Knz1ssA9JEfLAVih9ujjJHoO7ZV5
	8I0HlrZ6tBpU7hLdt335LjHMC9S+MZa0oaw4EiqUSq5omlIhkiuyO7mhStsmwdXFh/wtSYejvOf/i
	witZP7VNqwWiSLlvw0nxpJpwZuznF16mQwRsbGwcFwCfcL47KHvyBwyp0RvOirt1yPEiGQ1MXHfRZ
	j1kaE6RUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr4Ba-0000DM-Ko; Fri, 26 Jul 2019 17:39:18 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr4BU-0000Co-01
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 17:39:13 +0000
Received: by mail-pg1-f196.google.com with SMTP id i70so14358290pgd.4
 for <linux-nvme@lists.infradead.org>; Fri, 26 Jul 2019 10:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BLRStoDd5z+sqFvv2clGsxlIOFNpK8a8KvfsXFbGF7Q=;
 b=ikAimRoKR1vaALaUOgjY3uJgk95M8D1ddMrvkg3RZ7PQFmoDTGXuyOjiraXW5cF5w1
 citueDj7A49gZdFNu4M6M/834hjmIsO4UP3f8rz2DP6ZGAkJ168+706WdMQZbVZLKJ7P
 mbBH1dbW9YvObigMq0i0oWSLZx+NxLDgPzwbmjuQ1/ARmPcicvy0iQ7Is+esbFPyFLQA
 UplTLmBHOTG96V599vIkRa6L3JfAaUijbMXpUgrYG3asG/iug8cdcYxa4/qfKtEDNxBE
 tdEV6iB3m1pE8FmZxVBFyC1Dq/zYmEWC4K3lADhspwhK03BWsnAPENRlp7W9BzqZOytP
 eZPA==
X-Gm-Message-State: APjAAAVJuBJg7MV1uAzuxY//iTCAocO+mnHbWyQ66HwrSsTTOpVYjof4
 kPX4CW8TZRafl1+nKSAL6Y4=
X-Google-Smtp-Source: APXvYqwvwDBFpBbJ1Wg98F138UP8txEh/wvYMNzlXegQxIfLnmalqovqV00oHk8rclo9XKQdJU8ktQ==
X-Received: by 2002:a17:90a:372a:: with SMTP id
 u39mr99267115pjb.2.1564162750425; 
 Fri, 26 Jul 2019 10:39:10 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:3044:7ea3:7e19:4d2c?
 ([2601:647:4800:973f:3044:7ea3:7e19:4d2c])
 by smtp.gmail.com with ESMTPSA id l31sm96652626pgm.63.2019.07.26.10.39.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 10:39:09 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
 <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
Date: Fri, 26 Jul 2019 10:39:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_103912_039176_9FE51AA9 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Weellll ... I'm not sure if I totally agree with this one.

That's fair...

> As you might know I'm chasing down the mysterious reset/rescan issue, 
> too, and still haven't been able to resolve is properly.

Have you tried the patch that I proposed to you?

This is a different problem than what you reported, this is
addressing the scenario that the host connects and quickly
disconnects from a client before the scan is completed AND
multipath is enabled.

> But looking at this patch the hunk for clearing the current path on 
> removing namespaces looks like a good idea on itself.
> Care to separate this out?

Sure, although its designed to address this issue and not very
effective without the other part.

> Thing is, I had been notified on a regression caused by commit 
> 525aa5a705d86e ("nvme-multipath: split bios with the ns_head..."), which 
> manifests itself by a spurious I/O error during failover.

Hmm, this is interesting. Not sure how this specific commit would
introduce such an issue.

> This is hitting precisely the code path in nvme multipath; we're seeing 
> the message 'No path, failing I/O' during failover despite paths having 
> been reconnected previously.

Can we understand what are the controller states in this scenario?

> So your patch would indeed increase the likelyhood here, and I'm not 
> sure if that's the correct way to go.

Well, we are clearly doing the wrong thing if we're queueing I/O if all
the paths that we have are either DELETING or DEAD controllers. That
is precisely why we suffer from I/O hangs. This patch corrects this
wrong behavior. We must only requeue I/O if we have an available path
that is expected to sometime to resume (i.e. RESETTING/CONNECTING).

If we get I/O errors because all our paths are DELETING/DEAD then these
are not spurious, but rather expected.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
