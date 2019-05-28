Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57082CFD0
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 21:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K7+gw0Kfph6fDq/Pm/U7wYeZsY3nZ0M6PGfeiNS3V+Y=; b=LPSyB1bHuZx5qEtelDU+2d5pZ
	DBWo3HyDYA/2n4150lXSSnKpH3E/Xd5YuBkWXzHOq6mDrtX9t1el6J2ngvxV5Q4BIdJx7FLKjvNUZ
	+YVxiP90UrWJwI7qq3gw74z4VSOvQIAodkHDb8wGaaZLzKd4BGcKnIgu9tsDj0fUfLrJ+iXvBYtYh
	VRDPYh0ze3atXLWptuL+ADYR5nJhDQ5LZBMmq7w5RITw6v5XMKeCSEuhPvI4F8Sr9JOfHhknUuXV1
	i4x/OU/n2JgXYlEtVDU34MH/9Qrb+ZuSp0wj/P9TMU6OMiNPMzxBwXQo28uFYWLQ8uDRbSddgc9rV
	eZrPyJYlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hViAy-0004ul-Uq; Tue, 28 May 2019 19:54:24 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hViAt-0004uC-93
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 19:54:20 +0000
Received: by mail-pl1-f194.google.com with SMTP id g69so8784536plb.7
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 12:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4vLmLWVvsD1Lox4McVZE0jmnAdD0BtzYf7l1uDdHyUs=;
 b=LdLzCmU4bj5rRYHFVZfN9sY2zUYqVcLk/SJiU2wrNdgpoIJ8NVPua0HPOdbfqX5hhE
 MfBLjAl//gKubyUG5ABDmlyes7oAVtffFni7ZgKQ/qs7dnOEb1BVmF7KIPgp3ZBcRThd
 wOsekk3Km9LH0Ah+8sQ48QXVGhRmL2f7wTSqgqTG6fthXmcTlK6jj8Cmznv2/yVdO3VO
 5B+qa4d92f02QBO8D4vveMFfmX8Iv4wWBRLG/DtTVzGId2p4d0fi6HFxBSQjEFHnYBQj
 wfqSgPEwcPg7BegACQZyDgBdHcqHJ0R9hsHEIXg41YcEeT5NIu1NICInCZq2qq6RJ7C4
 XzsQ==
X-Gm-Message-State: APjAAAVMj2pFTRp3GTzAGKB4G3OlDZoeaWu/JismXVCb+NzrRqcd9Ssq
 sxMGSyqyKX+4/bhGpuAV5obC/PXYsNI=
X-Google-Smtp-Source: APXvYqyv3bV3P6cDKTUnJpCxbzA90XBoHbeCQpjBgA3k8sGrBE+2by7gklHprgln6nGaGzVe2XXwIQ==
X-Received: by 2002:a17:902:e40a:: with SMTP id
 ci10mr90209586plb.195.1559073258236; 
 Tue, 28 May 2019 12:54:18 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id 2sm21525575pgc.49.2019.05.28.12.54.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:54:17 -0700 (PDT)
Subject: Re: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
 <1558951310-31066-10-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f5eaed02-b448-913d-a3aa-580c5fd8dca0@grimberg.me>
Date: Tue, 28 May 2019 12:54:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558951310-31066-10-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_125419_320867_E5E188DD 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Add an association between subsystems/ctrls/namespaces using
> "nvme list-subsys" command. Now this command will show the following
> (notice that nvme-subsys4 is a dual controller subsystem that runs a
> native multipath configuration. Hidden block devices not presented):

I'm having a problem with the removal of the ANA state and the namespace
handle removal.

If you insist of having this display, please introduce it in a separate
command, don't just change how list-subsys acts (which is actually kinda
useful).

> nvme-subsys3 - NQN=nqn.2014.08.org.nvmexpress:80868086CVCQ5234001C400AGN INTEL SSDPEDMW400G4
> \
>   +- nvme0 pcie 0000:08:00.0 live
>   \
>    +- nvme3n1
> nvme-subsys4 - NQN=testsubsystem_0
> \
>   +- nvme4 rdma traddr=1.212.99.85 trsvcid=4420 live
>   \
>    +- nvme4n1
>    +- nvme4n2
>    +- nvme4n3
>   +- nvme5 rdma traddr=1.212.99.85 trsvcid=4420 live
>   \
>    +- nvme4n1
>    +- nvme4n2
>    +- nvme4n3

This is definitely better than the hidden devices though...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
