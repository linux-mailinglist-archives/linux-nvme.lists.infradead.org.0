Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11154E7ABD
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 22:05:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v47lQrD0OJYpgB5PtbLIU/D65VXoglrHq5Np6maZJGI=; b=UyDeUo3OUSt6l1wOSNSCovv8g
	W+N4gqjcqwScBc1f/W+UrlfktStMes7JKabv3yb/oDUKh6ONyyZK1WOFt8iXHWuceEaGC2WZAdDpP
	aBid1vIS50xhkBxnz5wmDqWgutMBREQx1JczxGgTbgxwyK+S7rAlx0xuo231WiNvWTPpxFaxh9gef
	GdZkiNdXrtoZAWGR8vMPvfZHO5HAOx5VioSBmFtGMPYOtonFC3JMoKQaEWxwb33pI23EHs9FDdZ0M
	EN61q+PrGivCIZ4+Gq0WgBfRQHMynDDkaaStSgm/Ls+h/vq7+LQp3/lRldOOrzSOIy3DqA3c79LnZ
	7U7VHmBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCC8-0005gj-FT; Mon, 28 Oct 2019 21:04:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCC4-0005gO-8s
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 21:04:53 +0000
Received: by mail-oi1-f195.google.com with SMTP id y194so2568782oie.4
 for <linux-nvme@lists.infradead.org>; Mon, 28 Oct 2019 14:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bhRVPrT7ZKrL948DFpxoobkyqmyFQ/kGjtFCRDQLbng=;
 b=ZVT1cmOSNzNiMfdn4Pji2xxeXpslwwfhA5WYyr1VDrTNiUmruLGyIoLd99ATgmP7P4
 VohQmJUc1/cfXcMu2kyAI2VmtThCJ8k8w0T6CQze5E3KpIV3dFmHN2LrRAKObkiCkq+Q
 C0kqBM/nczgRZ7vJbDKkrHIQ908vgNtOr0CPC1mq5Pi34KwWRdKMgkCR4Hx/mQ1FeS66
 1DE7PuVSsZttkm2n6ao3lKMZJBY8rf30sTulXqUwwpacFsggokOZ0wfbJz2fkBSUSPYS
 UTezE2AGtZFUgfAYukhjQy1tZI6DT9S+SeX35jeD+CorVY4xZnyiod88isHpoXDzdPHs
 Szxg==
X-Gm-Message-State: APjAAAUsPgt+79Au+kyt9zN5z89oAPcAx8GpjXQTmigsafFA47251xQU
 IYW+qQPOmUEciuhuboZkif0=
X-Google-Smtp-Source: APXvYqyoqNc1IWxnFDOoTJQR8H2nVe8mGjroSu+MJkSzXQbjdYC9qBb6bxbVhJpen4kgjNKWWfDkbQ==
X-Received: by 2002:aca:5f0a:: with SMTP id t10mr1156164oib.20.1572296690950; 
 Mon, 28 Oct 2019 14:04:50 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id l12sm3293027oii.48.2019.10.28.14.04.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 14:04:50 -0700 (PDT)
Subject: Re: [RFC PATCH 3/3] nvme: Introduce nvme_execute_passthru_rq_nowait()
To: Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
References: <20191025202535.12036-1-logang@deltatee.com>
 <20191025202535.12036-4-logang@deltatee.com> <20191027150937.GC5843@lst.de>
 <94c1e177-4848-c88b-ec26-3da118fd18dc@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7030395b-9f18-6866-10c0-906788243aa1@grimberg.me>
Date: Mon, 28 Oct 2019 14:04:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <94c1e177-4848-c88b-ec26-3da118fd18dc@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140452_314180_E902F12A 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> +void nvme_execute_passthru_rq_nowait(struct request *rq, rq_end_io_fn *done)
>>> +{
>>> +	struct nvme_command *cmd = nvme_req(rq)->cmd;
>>> +	struct nvme_ctrl *ctrl = nvme_req(rq)->ctrl;
>>> +	struct nvme_ns *ns = rq->q->queuedata;
>>> +	struct gendisk *disk = ns ? ns->disk : NULL;
>>> +	u32 effects;
>>> +
>>> +	/*
>>> +	 * This function may be called in interrupt context, so we cannot sleep
>>> +	 * but nvme_passthru_[start|end]() may sleep so we need to execute
>>> +	 * the command in a work queue.
>>> +	 */
>>> +	effects = nvme_command_effects(ctrl, ns, cmd->common.opcode);
>>> +	if (effects) {
>>> +		rq->end_io = done;
>>> +		INIT_WORK(&nvme_req(rq)->work, nvme_execute_passthru_rq_work);
>>> +		queue_work(nvme_wq, &nvme_req(rq)->work);
>>
>> But independent of the target code - I'd much rather leave this to the
>> caller.  Just call nvme_command_effects in the target code, then if
>> there are not side effects use blk_execute_rq_nowait directly, else
>> schedule a workqueue in the target code and call
>> nvme_execute_passthru_rq from it.
> 
> Ok, that seems sensible. Except it conflicts a bit with Sagi's feedback:
> presumably we need to cancel the work items during nvme_stop_ctrl() and
> that's going to be rather difficult to do from the caller. Are we saying
> this is unnecessary? It's not clear to me if passthru_start/end is going
> to be affected by nvme_stop_ctrl() which I believe is the main concern.

Actually, I don't think we need it thinking on it again... These are
just I/Os sent to the device. The reset sequence will simply iterate
all the I/Os and fail the busy ones, and those that will execute after
it will block on a frozen queue, just like any other I/O. So I don't
think we need to cancel them. And if this logic sits on the caller its
even clearer that this is the case.

However, it'd be good to test live controller resets to make sure
we are not missing anything...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
