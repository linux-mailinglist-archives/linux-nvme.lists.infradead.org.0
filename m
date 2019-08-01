Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE677E238
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 20:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IpBHGjChHOANxEq6boAXmNLpvDUxyctYM3bH+BO6yoo=; b=Z0sUMTnrqYUhacaPwtDn4sjmN
	BQ+VfKNR2XjL3V8ViMd0ZeFaHE2OUxSVAvmJi2YnCJQfaU1ug+XF81+18T9IsEX6ZOwPxKegY+IKZ
	zynCVF/EBnQCOLz8l9P7bju6NPcmH+SwNI93H3UOr3k2BPc1UOWfDl/V+OEz0hO+Xdujg0mJZWf56
	Zhjj+vhV980e1O4Jg0CQ0MsZlZPcvvW6YuwclHTc3c/PNrQGRj6zJs8P/wjWORje1OsnIraa3Ggwb
	U0gUzEJ1z6lEkO9ke1hpE/00BavW9h5HKmzJG6mQAEwEPiLm4zN4t07JN75STHWQF2sow4HTi8qBQ
	cwuQPTRKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFuL-0003pt-Mk; Thu, 01 Aug 2019 18:34:33 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFuG-0003pZ-3G
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 18:34:29 +0000
Received: by mail-oi1-f195.google.com with SMTP id g7so54745880oia.8
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 11:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KlslqmANdhuj/vv+EfhY1yjp5w1tbGSb2QcIudw80rY=;
 b=UIiU0S+6htI/sMgw+Bn952Mn87sFihKwpWwdpYCVNQKy3xiwTRmTBF0Y+V4nzPUdic
 vaFKvNw+udw72SzAfXwXIxOh35jx872dRN/nDmzl+lMBAJp7gz84PMtYw8AQ/lk5Z+kI
 fJU5tbyUlinSCKdFmAJ/C5TBksggZ+EvKZMOoYL+b+83ekGb3mAioWB3N2cuOgI4XrRc
 H9nToE25NOdDWaXwurzyRrFWuHrpwLgF/brC27LYHgauljJ7spz1FppjPZQEieZjl3eh
 q76SDQ6afVtUuagWjDq/Zos2N5yx1UitW3jbw5VIdznW1az5ndZKPLnQsUUHfBp1g9Pv
 VJnQ==
X-Gm-Message-State: APjAAAVRxPB65OqjsQbdXMdyrZ759BDdQwR/vFlGW5A4vl1VQmjsN5Da
 loxsP3ysNvSnoe4luPAfRwE=
X-Google-Smtp-Source: APXvYqzGnzpwVAg957SryrikavVRP7fuummFW/hsbv/ije5TPRDrSfHcTddbb25WJ3vVOjWCpWkoLw==
X-Received: by 2002:aca:c5d0:: with SMTP id v199mr122677oif.144.1564684466127; 
 Thu, 01 Aug 2019 11:34:26 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id p9sm21627708oti.20.2019.08.01.11.34.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 11:34:25 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: skip namespaces which are about to be removed
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-2-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <00204bc9-2399-d919-2fd4-ddcf689373b7@grimberg.me>
Date: Thu, 1 Aug 2019 11:34:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801071644.66690-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_113428_136340_F91B495B 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> nvme_ns_remove() will only remove the namespaces from the list at
> the very last step, so we might run into situations where we iterate
> over namespaces which are about to be deleted.
> To avoid crashes we should be skipping all namespaces with the
> NVME_NS_REMOVING flag set.

Hannes,
Can you please attach the actual crash that this is fixing? I think
its much easier to review and provide feedback.

Also, I think that what I proposed is addressing what you describe here
but in a cleaner way. You only raised a concern about calling
blk_cleanup_queue on a quiesced request queue which should not be
a problem because nothing is blocking on blk_queue_enter so it will
make progress.

Did you attempt to apply my suggested patch? Or do you have a
reproducer?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
