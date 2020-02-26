Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA05170CB8
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 00:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m52ms2WhmOPlqPaBrLB7NNzs7Pf93doBKqGVQPU8U90=; b=lZgmzDCFvWhMgttHXivyfW1eH
	g4LgVEv509KILMq4h7dCwrxADSFTUVwHuj2635gicpmH9fRSyho0GsUCkqNbBT2YypH0WwQMkcyp0
	JOw2wWSvVNSQVDR3Ina7KbiNsJS6TkW4bKPnoMsm+GWGdGnj6ntB8lh3jobMG+j67Mp6l0VIUc7MI
	euIwLPIciowefYqqiB4E6BRi8Rjp8OQokTZWv7g3s7XqAUvj/elkk4XTbYkYPTe/+8d74B65l0SdW
	puXRPl8kzeF2cmqwNNzUVccVUFy6Add5hMk85Csr+Qpuk9ry7oN0az7EZ5/C+gSH1OnIGMeOejHyJ
	u9mKluKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j76Ml-0007v5-Ax; Wed, 26 Feb 2020 23:45:23 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j76Mh-0007uR-Sx
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 23:45:21 +0000
Received: by mail-ot1-f42.google.com with SMTP id h9so1177447otj.11
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 15:45:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qmctBvvJbjt72/2+kQR+k7hRgJ6/aip9GUoW8iWF2D0=;
 b=m3Q+UhqBVXUgl887kUPAtNxqBdGzcO6Rh5AYtI844cCcC4SRvCQ+1NDIINLLcHZnfL
 5dws/DD5PXTclDvxccan9lI9+8jHUjIaT8W9Q67FStQEbN4pmA108CrD1uu9JwxQzfxs
 urqfX89053eGm83IenH7/azjzCQCG3rrdpUPEIeRPUdlzTpprH3dU9rcgPGWA/bCnlDh
 4EgHtQIa040HMb2lO6vASkFHHZoYlf1HWejMbN2+6GcE8Jaf9OKNbyRB5Av5GP2dEfzJ
 4CYMitGK1HWLp9skUzHxgWBHcJAuEKPeO6YspCrHKZ3Rik37XGT5mmGB9DxruD6WYGCv
 0+vQ==
X-Gm-Message-State: APjAAAV671IBeGxf8dpqBBOKRB8IAZZVgDVzof4j1Knhkc9ws3fBOKg9
 NdE/iOwpG3PszqHW8BH4dBBkHnaS
X-Google-Smtp-Source: APXvYqx4szyegwG/ALWJCid0iCpKnW0wBCgGU1svvlla/OBxcUw/LZWiWQbH/6+5HZRdQJWHBcCqvQ==
X-Received: by 2002:a9d:7304:: with SMTP id e4mr986882otk.99.1582760718122;
 Wed, 26 Feb 2020 15:45:18 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o1sm1299459otl.49.2020.02.26.15.45.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:45:17 -0800 (PST)
Subject: Re: [PATCH RFC] nvme/fc: sq flow control
To: Hannes Reinecke <hare@suse.de>, Keith Busch <keith.busch@wdc.com>
References: <20200225235956.28475-1-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <913efdfd-6899-08c7-90bb-36f2d33f1e92@grimberg.me>
Date: Wed, 26 Feb 2020 15:45:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225235956.28475-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_154519_941152_897A8C69 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 John Meneghini <john.meneghini@netapp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> As per NVMe-oF spec sq flow control is actually mandatory, and we should
> be implementing it to avoid the controller to return a fatal status
> error, and try to play nicely with controllers using sq flow control
> to implement QoS.

Hannes,

Can you please clarify why the individual transports aren't sufficient
for this QoS feature you are talking about?

If we look at the transports landscape, each transport has a credit
mechanism that can throttle bulk data transfers. In FC exchanges the
target is in control pulling data from the host with xfer_ready,
In RDMA the target decides when to issue rdma_read, and in TCP the
target decides when to issue R2T.

These are all credits that give the control to the target to
back-pressure the host. Now if the target doesn't want the host to send
more commands, it can throttle sending completions thus controlling the
pace.

I must say that returning BLK_STS_RESOURCE for host managed SQ_HEAD is a
bit awkward in my mind, but that just one's opinion, what do others have
to say?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
