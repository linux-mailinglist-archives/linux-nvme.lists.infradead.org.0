Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F23872128
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Js4uzKwm/7h7gJaEepn8A9ZPn3SLxbpr3aWE5wT+PV4=; b=HI63LopzOBszNdFPIvrdrEzcI
	Az1UzkbT8v+Jg+nRyo+LYzLXyHYS5JYjbKS8eiRU8O9LQ5AmHMGnOHlrvqZ1kaWhPcvNTBDN4/3vO
	czzxDSe9TkFaJXtgLuh7MFGEVOXbPkECsL9nofjCSzukAJVSS4vp3FkRw7Bu16i0ge0J8XCbQ4d97
	wzmFsoCgRRZye01dd7wYaEgsX2muoCfnc8H1yu+s31mKNLjbo5hDIn6XmIwCsWAJ/xEpxkWSEWa5A
	nf0Y9jFdRX/By6IfuDeTQrfX339mrieEwWldOPWEZOBXvfLw15UD29b9hA2uvEIXDiHhiiaKFmcWp
	1Xj27TzTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1oS-00018b-Sm; Tue, 23 Jul 2019 20:55:08 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1oF-00017u-RS
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:54:57 +0000
Received: by mail-pg1-f193.google.com with SMTP id i18so20005639pgl.11
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 13:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a8iFh5BbQND0J1Dwrc0Vos5lZnrpVUYNNsd3hBJPA34=;
 b=Pf8DsFBY5OBee7UADpFEmfTcCuH+PfnDTpcWKdO4rxF2B0ne8zTa25XpfWeNfINYjN
 fthWr/l7YSVd3+03lnWiHm45UN004jJY863K8/tDRLeCJinPHPp+EFcjqbCobkU+wV24
 +jPWn7ivxQygUg8uM4sfwcCK8V9O0CIM0x7Z5YcLIDITSBF3jpj85rJx8TB9VhXUbEjg
 +yGkQxFvgEiux/p5KlqXUab7VVIwc1Znb2e76ZwGC5iohMQAZyNUR/DumcfzSD4Y0ojU
 aRp3TbLYjYf1IuvzF4A1NWk30qESy4EpbANKNwLu/+uVh6zdQtV+dQ813WP9SbQ/R770
 X04Q==
X-Gm-Message-State: APjAAAWrQDnB/XwTxqB4m9J4jp762DBNsTscw1H+nTUduDCpAzL8ZHo4
 1hBPNVP76h5EBfTr7bjNIdp2j6O3o4o=
X-Google-Smtp-Source: APXvYqz9vS3CD0YxxS6FLT0olRRoiZHe2LxKsuIwSjFixP+MX3waHzzb/CVdoRCsXYheYJYEQ6JRjw==
X-Received: by 2002:a17:90a:24ac:: with SMTP id
 i41mr83137777pje.124.1563915294648; 
 Tue, 23 Jul 2019 13:54:54 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id t7sm36935088pfh.101.2019.07.23.13.54.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 13:54:53 -0700 (PDT)
Subject: Re: [PATCH 2/5] blk-mq: introduce
 blk_mq_tagset_wait_completed_request()
To: Ming Lei <ming.lei@redhat.com>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-3-ming.lei@redhat.com>
 <c2722892-9cbf-0747-58a8-91a99b72bc53@acm.org>
 <20190723010616.GC30776@ming.t460p>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <d4d3ded9-0012-68c1-7511-f5ac3aa7b1fb@acm.org>
Date: Tue, 23 Jul 2019 13:54:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190723010616.GC30776@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_135455_893403_E1D1E43C 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/22/19 6:06 PM, Ming Lei wrote:
> On Mon, Jul 22, 2019 at 08:25:07AM -0700, Bart Van Assche wrote:
>> On 7/21/19 10:39 PM, Ming Lei wrote:
>>> blk-mq may schedule to call queue's complete function on remote CPU via
>>> IPI, but doesn't provide any way to synchronize the request's complete
>>> fn.
>>>
>>> In some driver's EH(such as NVMe), hardware queue's resource may be freed &
>>> re-allocated. If the completed request's complete fn is run finally after the
>>> hardware queue's resource is released, kernel crash will be triggered.
>>>
>>> Prepare for fixing this kind of issue by introducing
>>> blk_mq_tagset_wait_completed_request().
>>
>> An explanation is missing of why the block layer is modified to fix this
>> instead of the NVMe driver.
> 
> The above commit log has explained that there isn't sync mechanism in
> blk-mq wrt. request completion, and there might be similar issue in other
> future drivers.

That is not sufficient as a motivation to modify the block layer because 
there is already a way to wait until request completions have finished, 
namely the request queue freeze mechanism. Have you considered to use 
that mechanism instead of introducing 
blk_mq_tagset_wait_completed_request()?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
