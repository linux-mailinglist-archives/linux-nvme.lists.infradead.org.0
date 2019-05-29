Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FD72E86A
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rlYK6inezlufynf6I4Mxj1KC0NFX5Nb9e6Aw/2a0yUY=; b=UFEKNZ998yKRjiLo/ifLa2PLC
	lTng9hnNtk2D+EXCyHaO5xPx9IlccSAkIT0PZU023CqRYTWxY84hbiOyB6oyyiDs2ADXmugp84H+A
	6tb9JwoupCz+1LkWrY28lf9Rj0iRRV+qX3mD9axw6fZcl/PYG5jvTNeUe1re9uci7b2H5bKV44Xug
	Imog76wt+EgqjOBQgXw1O/EZ1HmhI9T0d8OEAZyOCSP4AVcOOSWM6HQOZP8P5xgXP6MIv6bEFpc4+
	lgOL1fUMvHl0EDAgyni1SUa8E8Hprkg7/CzJNUjQ//owxjyXKFmxSNU3AbgFfgz79qIL5IY5Zn/eu
	gs2JN5aWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7Gb-0005VA-HZ; Wed, 29 May 2019 22:41:53 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7GV-0005Ua-Je
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:41:49 +0000
Received: by mail-wm1-f67.google.com with SMTP id 7so2580472wmo.2
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:41:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cUxWWF/QTgGQEtGiG+8U/DmQFpomRpC+tbO/9SrxRGc=;
 b=VujdyFjS70KgnOnUxpHLBFB+XLCuKufm6qJtq/78/iDc7dK9Jj7atprduaKT9x7+4g
 XAuw98bO5e6ViJBaLv/X8phYoVZBkCZ5cIL93lVs6T6Cfet63OTkcTiTh8g3CyERCbSs
 iOTKHbA188RpOp4+tCEfbG3GjFYpczRhRQTwfMUZRNhRuSPeYvN+gIdbcMpnov637hCi
 ifT69h73ySTNmoVg5MHf8O8HMN6QguLqo9/YyWB+vATTLUzqQaccEyn3jIINq7gB8nWK
 1Xs1O4mbppMPyEfU57eaJuUhPKmO8JtAIZbaVklnqJYANzkXA7v8RayXbFz6oDUqYfmo
 /KVA==
X-Gm-Message-State: APjAAAWPGesO0qYlgXCyh9cervo5ZFjLCbTN6oHQG8jXoEp2hvpA7rN/
 /RkpuoS7YhRlSy4blDCjJehwX3i0
X-Google-Smtp-Source: APXvYqzsroX95vyL960QdATF+RjEE4xPxymobKjiA//d1XzylLXq6kt3cOTKReSPd6/Ry/g48Cm/cg==
X-Received: by 2002:a1c:7f10:: with SMTP id a16mr236590wmd.30.1559169705581;
 Wed, 29 May 2019 15:41:45 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id x6sm1578576wru.36.2019.05.29.15.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:41:44 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190529054905.16279-1-sagi@grimberg.me>
 <83c239a0-69bd-9fa4-b7af-4cb01d20cc2c@mellanox.com>
 <c5fa88e8-f046-2d3b-7851-afbc1446fcbf@grimberg.me>
 <43f3aeb8-d8a7-a9b4-7623-7f6e0a2bdc2b@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <22d82019-67cc-3cca-6920-d2accd7ed2b0@grimberg.me>
Date: Wed, 29 May 2019 15:41:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <43f3aeb8-d8a7-a9b4-7623-7f6e0a2bdc2b@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154147_647281_52E2CB43 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 james.r.harris@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> I see. It will work (in case I understand the idea).
> 
> I guess that set->map[HCTX_TYPE_READ].queue_offset is always == 
> set->map[HCTX_TYPE_DEFAULT].nr_queues in case of separate queues.

Yes.

> I really don't understand the answer I got in V1, that we need to set 
> the READ map always (also in the shared case). In the documentation it 
> says that DEFAULT refers to queues that are not set explicitly. maybe 
> it's because the nr_maps that we ask during tagset creation.

Exactly.

> BTW,
> 
> does this feature really improve performance ? what is the scenario ?

It could. It pretty much gives dedicated queues for reads that are
usually more latency sensitive than writes.

Also, I have a patch that I plan to propose that ties priority queue
arbitration to this. This way we can hint the controller the priority
of poll queues over read queues over default queues.

> I thing that a user might configure the queues in a wrong way that will 
> cause perf degradation.

The default case remains intact. The user can always theoretically get
it wrong, but this is why its not the default.

> This patch fixes the reported bug,
> 
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Thanks Max. We'll queue it up.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
