Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B727B7B15D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 20:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I5pDS7qSex4bvOrQ0W655bS2PltOutrBNT2PlKfy+Co=; b=lxj4NcSpnJDJd1QnrHQ/08V47
	uKnjz7yCjykkzo0HWHL7dWZ/b6ufIfVlKuo0I1ArbqDvgqZEKD/DSsJKZtJQ3aYt+oOiGRX90IUEB
	di+oSmJLPEF17+S0b5QEQfFi711N6wX02sSN/3W11Uk+ZighTY2qiUL4IJ/AP7ASIX/GqTmHSIiKo
	t4+CLHLqX8665FQ2RjMVMcfQXWg308P1MZkpbRKTqHiM5xUQ28LBgsCn8rKsBvdLBf67e6xIOktat
	Zql2HjiBfZ6+xvCzyxlNRmVG/9sWbdKwaAd4OD7k9PoKTyzAvD7bOx8h8He66j4yzPAVw9e4w/G1N
	LRfLQbzzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWeu-0001Lz-Cn; Tue, 30 Jul 2019 18:15:36 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWep-0001L5-0b
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 18:15:32 +0000
Received: by mail-oi1-f194.google.com with SMTP id g7so48600700oia.8
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 11:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bRQ4xia6Nrml7e+aRVZ4djOBAI8l6ldzvfVSd9LUdyI=;
 b=FvCuyWXB5mrDocEusi/NyWW1Bci0w2XNGtvLL6k3TS2TJkuS5Aocu5s/MwFUikI1KF
 +70uuRbyKOvKcqyXpln2Nyja60ubM/4mc8JKL0FpnGL3r6imZvssXhZz02373jPy4B6W
 9Vqxe+nY/kB2kAWMJoHQ+fm46lzcRISDpO12tA4fsGhHqia9I2/MudYrnn3Wb6XulBUQ
 2T4SoRWkCJbSp/Cdhii3LOzcfjeDdeLNO9iL+ZrY4/XTHMWaUtep+xmfnuXA8crcnUvt
 7Qgx3ZjJ1BvyroHhFhLmibnqn8gBb2jBU5RvjpUwrmxD9dxzHXBZpGTQ2iWPH7avSpkG
 8x2Q==
X-Gm-Message-State: APjAAAU8LaLmJ//QSP0Qtly6yC2pcWZVbuv4oTDoZC2j8WZUgGyK5Hjo
 tuURMoQs/KEAq4ldFsq/Bsk=
X-Google-Smtp-Source: APXvYqyxcbdH4hJ8DdJfNHOqiWYf2qqQzPwY0AsfTamxK+zODlzGw62KENCuDu8+dj9I9fQtTofHCg==
X-Received: by 2002:aca:ac48:: with SMTP id v69mr55387509oie.48.1564510529869; 
 Tue, 30 Jul 2019 11:15:29 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id h13sm21991776otq.11.2019.07.30.11.15.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 11:15:29 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f6ef7bfc-0d7c-95e6-21d3-b69545a1715b@grimberg.me>
Date: Tue, 30 Jul 2019 11:15:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730173048.GC13948@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_111531_052765_D580C00B 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Keith,
>>
>> As for the failure during reset scenario, this is happening only when
>> the namespace is about to go away or something is seriously wrong right
>> (looking from where nvme_kill_queues is called).
>>
>> Do you still think we should avoid calling the revalidate_disk if the
>> controller is resetting?
> 
> I was considering if a reset happens to trigger when nvme's
> revalidate_disk tries to read identify namespace. It's possible that
> command gets aborted, and we don't retry admin commands, so we'd return
> -ENODEV and nvme_validate_ns() removes an otherwise healthy namespace.

But if the ctrl->state condition is after the revalidate_disk call it
won't remove the namespace.
--
                 if (ns->disk && revalidate_disk(ns->disk &&
                     ctrl->state == NVME_CTRL_LIVE)
                         nvme_ns_remove(ns);
--

> 
> I'm not too concerned about this corner case actually occuring in
> practice, though.

Say, why are we removing the namepsace if the revalidate failed?
Don't see an equivalent behavior in scsi or others in drivers/block..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
