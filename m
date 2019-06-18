Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595554A8AD
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 19:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gpj5t7hOFV4OT4dCHlqrzNmRfm73yifymFYLUesfcLY=; b=B78GiYDlc0nYdGa/B3nJcSD/w
	adTQki9V9c8vKh+s4C86gQEZx2P5dnNIS4BYhF8IhBqEGYEdoA75CMS+qqyhAMrKXTPOLy43+egPe
	EF71Si6jUpbe3ibo7SFmaPlx6s1K2MwWoO8Qtkqx9IeFJ9H4Dl9IyHFZN58WjnjwCm1RnkU8P/NXX
	6QR4+sOa0zoZUSs6+i/Q+/6MSdT/SM1yQMP03eJYzXsqJLVgESrKV8g37uk2lRejf5gNC1DxLQhnX
	Nrb+pGfabJgQomFho+5A4K0/VX6cJJhCtdasxw+4Omb9LqjOI4haSE1hM7k02G3gHBAD7uoXG1Zdp
	AMk3lDopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdI7N-0000RV-K4; Tue, 18 Jun 2019 17:42:01 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdI7G-0000R3-OT
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 17:41:55 +0000
Received: by mail-pg1-f194.google.com with SMTP id k187so8085917pga.0
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 10:41:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KGz8zim5w+Azn63GsS3fKDKtFbSBJ8Amvcd685Nyxq0=;
 b=kEj4sg6FSZmtp9VZnDDdcX//qoKd45NwBpS+SVaTYiNzRcPDs0WxrXkLel7SfIzSJa
 G4sn9rzcfA5XoTdioc1l6jcXEGhZshOTKUxN7qjmlBo7tFMrzUR3g9ZLTeLh+o5ri2zA
 E/C/f7eXlcpKfumVH0+5JypuK9s9BtRYTWVzJdBzmgiT0mMGfLijD0AptWMT7IS2AT72
 +Q0St6BbxwHmWpd0aqD/FjeZn96EIMaqHVPNJKpvW8FBHA6onfj2yALNziJocT7e27wt
 5+YviYgNIcca5LiEEJk8tm2jjJAVeSWXHMUh6J8qRIaTMuVJvbQyNPxS1F1wqX96ty91
 0m7A==
X-Gm-Message-State: APjAAAWbseJlX6cou9wuGcZzufmZdTyjLSLagduaUQAQ5CTHnfV4vvqG
 i+oQPaX9kJtNSIb/1Z/m2yAoDv/muIw=
X-Google-Smtp-Source: APXvYqyf/EkVfoebTVWyZ2Tkqz3I8RSOLvlpMLajhtCnpq0wCBV+tE0ZflIu8yKgjAQG83YWW8b4lA==
X-Received: by 2002:a17:90a:4803:: with SMTP id
 a3mr6569191pjh.58.1560879713599; 
 Tue, 18 Jun 2019 10:41:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:8c36:4f80:5fb5:4302?
 ([2601:647:4800:973f:8c36:4f80:5fb5:4302])
 by smtp.gmail.com with ESMTPSA id s66sm17367527pgs.87.2019.06.18.10.41.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 10:41:52 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
Date: Tue, 18 Jun 2019 10:41:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618101025.78840-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_104154_794596_6012C7C5 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> When resetting the controller there is no point whatsoever to
> have a scan run in parallel;

There is also no point of trying to prevent it.

> we cannot access the controller and
> we cannot tell which devices are present and which not.
> Additionally we'll run a scan after reset anyway.
> So flush existing scans before reconnecting, ensuring to
> short-circuit the scan workqueue function if the controller state
> isn't live to avoid lockups.

What is this fixing? can we get a detailed description?

These ctrl->state conditions sprayed around that are not barriered
by anything do not prevent any scan to run in parallel with resets.

Also, do note that resets will unquiesce the admin queue right away
and not when the reset completes (rdma, tcp, fc). The only exception
is pci that will unquiesce as soon as the reset fails.

So can you please clarify the problem?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
