Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1507611C19E
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 01:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=XzESqyVZQdbLRed6Mwq7yOv2f
	ujOXE48MVAUTl7jAxw7t0A3sZdk8BGrpYz4jPMhk6x1iRcOcqU7tUJxfzjM40piJJU0y9pIBORSBe
	T8ifSV02k0Fl7ouoHswCuHT7RBG7qX5rpttmPcw87jxBOYfs6Cfy8+M/Atj0bbA43mUiHMl7OeQ3a
	bwdNjWF/61wNesCA0x6bngyS6Cojtpmmuvm2aAbvGHHEB36XjX0GZVKvXKJqTxlj31p7auIxrlpB4
	wATwkghnSpNefjHlIo4a3fYhExXO3eiI3NlZqUntjo9rU2g3Fy1Rxt3E28ZTi4iZPW7tArNgtxTsO
	FzVPyTe4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCch-0005Vg-Bk; Thu, 12 Dec 2019 00:46:31 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCca-0005V3-F4
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 00:46:25 +0000
Received: by mail-ot1-f50.google.com with SMTP id h20so635360otn.5
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 16:46:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=DFrL2+SbzTWY44w5zxRcc3UEyTo3QU84Bdo65X6KzWI8p3mHLpVsiCSMqkog2Aik61
 XE2FeS7wU63+vm0BTM0mTDFNlS5OcjTLRmh2eUlh6ONyWAEtfUpbkzvsT0VsgvvBFMza
 MVAiDhZQ8nKy2YV4jRzD66C7y711PPQSm6mGJl2LqXleWhnAx74y8/VOH/YkGRzNadSk
 q25yxikvg/IoRBVEaTsaMRxuw79lkB/P3N+pdhbVxhKeoSrCEM44aWaDwIX4yRFwWxr5
 xwNdV2QyPrlX+oT6a2U9pIwFUqWzBJeZBvDdUY+uuI3eAOFYh2T6ijrRINRWZcI9KTr7
 cF9w==
X-Gm-Message-State: APjAAAVY98gqUwvB7uq6obo5UKp3YxTLs0dGV+5eIIyvX9qtXCt8ZG1a
 arGJWfH2T9Wg0pH5VAS93B4gBuGA
X-Google-Smtp-Source: APXvYqy7+YsN+oYCBNk1TbaNRonx+g+b/FnT3LFUtWoKIU9a9SE9ExiQNy0EI2h0zN3O8QyiKM5yvw==
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr5036697ots.250.1576111583599;
 Wed, 11 Dec 2019 16:46:23 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t9sm1500186otm.76.2019.12.11.16.46.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 16:46:23 -0800 (PST)
Subject: Re: [PATCH V2 3/3] nvmet: check sscanf value for subsys serial attr
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
 <20191127094034.12334-4-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <59f0fa2b-5b0c-ae81-6458-345aca40ee73@grimberg.me>
Date: Wed, 11 Dec 2019 16:46:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127094034.12334-4-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_164624_501976_F876A76E 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
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
Cc: hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
