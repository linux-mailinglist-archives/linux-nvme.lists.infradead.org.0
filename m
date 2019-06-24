Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2792051A47
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hP4inhRQW/bZj4XkxZk05jWSTcYSjWozuOhGq02Jtec=; b=CxMkr4JxAaFb+AftdrKFkOcDW
	gJNx9S/i0fr2YvU1G31tO1muqVBsdePoIYLzMhT9x07eQOqGTqB0g152H87pTaPnYT1VJi+B9PF6K
	P0y5EN9nbuOi71q6TDo1sJNYH+eQrd1TXIqmjheZA5P95CEgNrj2dSYLv+nOG3qmTi31D95SGgeJZ
	ZTd3HTJC+dJ3sFAXWgB5Em2CCslCiWdoXWbw4fKx3otmelB239gdwhXK0E542yuMYq7yiuCErqhBT
	55lrUezrcAA4TFsoI+9ID+bRriKpH6HEnDPjof3NzNYe6NThS+tLNUYRYXY2lUCiL645Hl6kEj4Ve
	zYKJ+Lf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTOS-00021B-Uw; Mon, 24 Jun 2019 18:08:40 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTON-00020g-Gr
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:08:36 +0000
Received: by mail-ot1-f65.google.com with SMTP id j19so14495478otq.2
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 11:08:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZUqmJ3El/plyLtW8z+gr+2gIG6Ka2kYwdEXJhvnzVzI=;
 b=iPE/Ips/J6uEX0XW1sdYhoY6ddwGkc/MEZ13YY7qr+grYZEbh/od+XztnDWqiell5V
 1JhA93bCTyrgDO9GvwwoQQqHktss3+Pe7OODzHJxhpznD971YkJG8fiHHUPdLfTpsp3X
 inCSAPh3FeaFOiN5fgTdBf1nCV/sSd5Jr6OB93BVgkOurp3Fr1H2UT4X4EYA9AEXnd88
 wzHcD5Kmdx4qblv8DIuLBEu8yW+gZnFrqjYZEEqrZfUdTyEAAa/ea0DRKC8tadwn5RzR
 4FFJbKuATdvv2tw84qmqBwgwuSusnTQInTEQa9XzWbOmLRdb0gOMbmT30OcxfVgOFF4R
 R5dA==
X-Gm-Message-State: APjAAAU7ukzLrMX0AFiAw/PmQTuzctCGcktlewRuj4dURhXI7JX4wS93
 p76hGon2DDHx+RZ8zBsk+orD3vRJ
X-Google-Smtp-Source: APXvYqxW8ofHsoVRZdA1dhCTHMeLipum4eGMDsb4UdnN/nivZwrIBVBRDMPw06T9on63J5cc336uYg==
X-Received: by 2002:a05:6830:16:: with SMTP id
 c22mr31148296otp.116.1561399710312; 
 Mon, 24 Jun 2019 11:08:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b21sm4726477otp.80.2019.06.24.11.08.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 11:08:29 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
Date: Mon, 24 Jun 2019 11:08:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_110835_563687_130CC10D 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> That's what I thought initially, too, but it turned out to be not
>>>> sufficient.
>>>
>>> Not sufficient because it hangs? or panics?
>>>
> It hangs, and we're seeing a warning:
> 
> kernel: [67088.344034] WARNING: CPU: 4 PID: 25020 at
> ../lib/percpu-refcount.c:334 percpu_ref_kill_and_confirm+0x7a/0xa0
> [ .. ]
> kernel: [67088.344106] Call Trace:
> kernel: [67088.344112]  blk_freeze_queue_start+0x2a/0x40
> kernel: [67088.344114]  blk_freeze_queue+0xe/0x40
> kernel: [67088.344118]  nvme_update_disk_info+0x36/0x260 [nvme_core]
> kernel: [67088.344122]  __nvme_revalidate_disk+0xca/0xf0 [nvme_core]
> kernel: [67088.344125]  nvme_revalidate_disk+0xa6/0x120 [nvme_core]
> kernel: [67088.344127]  ? blk_mq_get_tag+0xa3/0x220
> kernel: [67088.344130]  revalidate_disk+0x23/0xc0
> kernel: [67088.344133]  nvme_validate_ns+0x43/0x830 [nvme_core]
> kernel: [67088.344137]  ? wake_up_q+0x70/0x70
> kernel: [67088.344139]  ? blk_mq_free_request+0x12a/0x160
> kernel: [67088.344142]  ? __nvme_submit_sync_cmd+0x73/0xe0 [nvme_core]
> kernel: [67088.344145]  nvme_scan_work+0x2b3/0x350 [nvme_core]
> kernel: [67088.344149]  process_one_work+0x1da/0x400
> 
>  From which I've inferred that we're still running a scan in parallel to
> reset, and that the scan thread is calling 'blk_freeze_queue()' on a
> queue which is already torn down.


Where is the scan triggered from? there is no scan call from the reset
path.

Is there a namespace removal or something else that triggers AEN
to make this happen?

What exactly is the scenario?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
