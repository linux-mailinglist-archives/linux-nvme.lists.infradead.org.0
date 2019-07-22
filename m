Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8528703AA
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 17:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4sVKB4cOc4wmJzaC4yZe8yLpYNTalEIcWGJzuS89sco=; b=oENkROomzVo349kTK0Ev6RdiV
	Jh/ajIVwRuvPk43gk4B4sMF8QK773BfcOoUDO9x6MiQbQBiihdqE7EKMc75GUFS4UMUTwTZg2Aj/l
	MS/e9MXWwwlTM9ZZcftPfxJP7+/HOaXNFyaPxbDbHHkmVtEopFGNIcTbz/laS2AlOTrsNGtNMFnLf
	NT4XDLq7GSd01A84WByMgavOAQoJLkEJf2xQnQxCTzRccsIaYor+j9G9ypvsBP+FBAlQO/wCeds1s
	4W9jRVwYH8PQr+zohdoKedGpXDXie44FDaX7ktpfus5WZvGbB6NI9DqLxFiCL0W9W2fmQ0nX2VhEo
	EpMQusa5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaBw-0002FQ-Mv; Mon, 22 Jul 2019 15:25:32 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaBc-0002EZ-0Q
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 15:25:15 +0000
Received: by mail-pg1-f193.google.com with SMTP id w10so17826338pgj.7
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 08:25:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9jCVali6gKyIf+iTVA7FGys0/plNy2aSpdO4EPkxFHY=;
 b=aiH6hB93A+QKhzXvrtzVgLw0MiIR4MUQUf7jBH+ZB30nHw4uuDIFh7AWnw4aWD79BS
 SaCjWT2jrFHDnnzKYaJDk5ICJCxUavKRWhIKxjg4+wRv6XV7YE/GjO3tMPqN8UfxCACN
 +xggKmWx+AAFDYsots7oq9r8tWzGmrPIOTHlQqJKIwVLNyeYH+qb8/O+YQQuRP/vh4eo
 qubAaD/WCzPhS9+ezLqFVHyxLbkPE+thgTkX9YAvPS81G344Zp6KHa7gHeq6aJ7RKDg/
 qxWbisn9ttwpNvZkV0tMlBWTWFs9JR9xWFDxfWp3a8VujaQ8Tpsyx7AojrPoBgeiR9yZ
 yJ4w==
X-Gm-Message-State: APjAAAU9d9Nv6r5ua8TtdN59F1p/xaSdoWM+Y4L8wJuiLnlqOA4sFwWO
 SHNwLsKW0i/sLxGrZc0zqQc=
X-Google-Smtp-Source: APXvYqzIStTvg9h7MwNPMWX/s1A/lVS1FdstXi9YHhtd8dwEX5Skqs1eRYLn0XS50glRBzcMKyx//w==
X-Received: by 2002:a17:90a:d343:: with SMTP id
 i3mr80813836pjx.15.1563809109921; 
 Mon, 22 Jul 2019 08:25:09 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id g4sm51862448pfo.93.2019.07.22.08.25.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 08:25:08 -0700 (PDT)
Subject: Re: [PATCH 2/5] blk-mq: introduce
 blk_mq_tagset_wait_completed_request()
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-3-ming.lei@redhat.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <c2722892-9cbf-0747-58a8-91a99b72bc53@acm.org>
Date: Mon, 22 Jul 2019 08:25:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-3-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_082512_466306_7DA35F5F 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/21/19 10:39 PM, Ming Lei wrote:
> blk-mq may schedule to call queue's complete function on remote CPU via
> IPI, but doesn't provide any way to synchronize the request's complete
> fn.
> 
> In some driver's EH(such as NVMe), hardware queue's resource may be freed &
> re-allocated. If the completed request's complete fn is run finally after the
> hardware queue's resource is released, kernel crash will be triggered.
> 
> Prepare for fixing this kind of issue by introducing
> blk_mq_tagset_wait_completed_request().

An explanation is missing of why the block layer is modified to fix this 
instead of the NVMe driver.

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
