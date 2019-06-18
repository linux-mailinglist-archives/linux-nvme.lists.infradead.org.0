Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2624ABDE
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 22:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e3lXxJcsZeo/GijG5f9iISvScPD0Ihyh7s2Vov9xptc=; b=IJgRRdbWDyQedwIo0c31vUwjR
	I6GgQU9KyVVPqQkPe6AhKEUou3dG/O1QeRR8WnlMHVUNkir/8H9hDb4vRbjAs4b2JIXv3x9PlnHHU
	EKOmT3WvnMq/8uYXxb4TcvEx5JQ9ctrR+GCeP/JYwe6f2Ol4PMpUVjlGfZ26Ihi087BN+68ueSApD
	MOFL4ChVPAL8dOgNAy5Oi//+yQNlptCOWmli+zTbnKzFOf/crMP9dU9jBq9T8BH5UeqvCtJ0aaymq
	2Yd9FbtsrAphC77nI8fUvLUX+RpudIkvk1Dv9YgFtDxuV7tMvgZXEX4DbupBGZ5GS4d8uNTaqD+1b
	aASj1T8XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKoO-0001IC-1E; Tue, 18 Jun 2019 20:34:36 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKny-00015D-M8
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 20:34:11 +0000
Received: by mail-pf1-f194.google.com with SMTP id d126so8312382pfd.2
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 13:34:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2vpZ/m3csHbnhTUJOQHn6RXxCQHIVjfvlv30EYjMQdc=;
 b=qE/WIIXXqAqnzHWXiK/E4bBXg9dFY1g8n3vzvY6vDC8Mo7m4eHbxx0zgSRV7Opv+xx
 wLs5+AjLU/2FIfRXNrt5pU/xgXprvPXE29QpQUrR/xHjJ7VwKhkwrUvtXM1yvy+HBa/Q
 h32pFhJqFcP8fZHfVGeiQyGaI0RBU9up2y414YuawtfKGic2eKGqx7IHqDvLD5JKefsO
 5t4T7eXTmN9oNTHOOkXNXcnFRrW7TFrd2auhSV1GhB75LrvQ1hvFGoOUWEcStWSNIv/d
 YQqpdj8egh5g2Btx+pO+AUQoWgTW1jkW8feerPCZ/yRBnFT/+BNAzuaAOqmZ2oOKx3AO
 ufjw==
X-Gm-Message-State: APjAAAWe6Ih7IsIgsOPb6c68YhEL/A+hwkXuxET4/lg6TMHUbwCsmSOV
 i78pQl47tahC7NuTKi80rTMTqCI58/4=
X-Google-Smtp-Source: APXvYqz+XfRFLrS7vKuCKuUdDhEyAQPX8VWjrfmDBeBh1sbwdouiG0nDeUdC7zvj6acB/y8kh9OsEw==
X-Received: by 2002:a62:5c3:: with SMTP id 186mr8067056pff.144.1560890049057; 
 Tue, 18 Jun 2019 13:34:09 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id i6sm16034677pfc.55.2019.06.18.13.34.07
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 13:34:08 -0700 (PDT)
Subject: Re: [PATCH v3 0/3] NVMe 1.4 Identify Namespace Support
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190617161222.253849-1-bvanassche@acm.org>
 <aa89ce11-b24b-fdd6-c83f-939124356584@suse.de>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <90b2855a-4aa1-b089-2123-7061fa11330d@acm.org>
Date: Tue, 18 Jun 2019 13:34:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <aa89ce11-b24b-fdd6-c83f-939124356584@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_133410_741968_571ED2E2 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/18/19 12:52 AM, Hannes Reinecke wrote:
> Can you send a patch for nvme-cli, too?

Sure. But I do not know what the preferred approach is for contributing 
to nvme-cli? Should I post a patch on this mailing list or rather send a 
github pull request?

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
