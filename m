Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD44F8661
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 02:31:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=P26q6uBvTyaGTs+905Ng01j5x
	lZFMRHJOfezOQz7MlCjMPZjnUHqqUALasc8dZKdkVZfRcAsQhKPP4pPnZhYPPP9U6LBnscqzafWHJ
	1DwipHaNyJe2znJAh1xFaUWL65UQGs4bjdXVMR6tGic/inrD4jQUnHdx72IilToAuknkZ1PmX8qK6
	3iC9mcK+bFR3ejTvuk8A5HT3KXvfhbecgVYKlHYk/xxa+cULEJixvDC9r12JVOD8XayoCTFFi+PJZ
	fvAk+bS6+bP3z9lxmdXQWHtfxo4XahzjbyyWaG+0g9t02UXeJQA3cYrVQ0I1rgzZ0d0teSB3PgWPc
	GbDGzF1RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUL23-0007Cs-45; Tue, 12 Nov 2019 01:31:47 +0000
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUL1z-0007Ca-Ja
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 01:31:45 +0000
Received: by mail-wm1-f47.google.com with SMTP id c22so1222875wmd.1
 for <linux-nvme@lists.infradead.org>; Mon, 11 Nov 2019 17:31:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=ipwooy++SIdfwxP/0eNDqA5Qplh0MT/KMF18uqmEf/VsqEFlhlFpTC6X4+SI7UZpyk
 EzbLJNRzEG4ChiIPmG3H22mbqxfxevqvXV5CbDlfA82DYr9fBQokQVP4MQ91KyJML44Z
 F/5+qN+Wv6GGbszsyuZ5f2fDzCbJ1MCx029L3w6gGXQ7S4kGjLQ+Nrl4v3DE9CU35Pwo
 LajXz7eiQiOUBJmxIAz9WB2n4+m7512vturUtaKhTTuaILh0fhpiZ9E0Gez+HFAz/NP3
 YjjEbvRcXKLUeVptfOamGgXOUtkHxKzXF0y7h4rZfT6j9sNfsTt8dHfA2drRIk6sK1GU
 Wqdw==
X-Gm-Message-State: APjAAAVjzBxotDaYNTpUh2VwnOMrYEMlP21yCD93CvJQr6OjzX4VbHLW
 g7+E/oJZvzIf1OXOGDcIxmtJcRh2
X-Google-Smtp-Source: APXvYqwNc+UIpmlg3cP+lOyzFrUAHjf5gdvcaSrp8cLiThYuQV1Pyf6gAY4BiwGw8hINnuUCQw7rYQ==
X-Received: by 2002:a1c:6144:: with SMTP id v65mr1564703wmb.53.1573522301041; 
 Mon, 11 Nov 2019 17:31:41 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id h124sm1841649wmf.30.2019.11.11.17.31.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 17:31:40 -0800 (PST)
Subject: Re: [PATCH v3] Workaround for discard on non-conformant nvme devices
To: Eduard Hasenleithner <eduard@hasenleithner.at>,
 linux-nvme@lists.infradead.org
References: <aa716b06-6e9a-f668-49b4-4007bd3bffae@hasenleithner.at>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <57a031d1-a2db-3b20-4a90-a3605b7f5ff1@grimberg.me>
Date: Mon, 11 Nov 2019 17:31:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <aa716b06-6e9a-f668-49b4-4007bd3bffae@hasenleithner.at>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_173143_645271_E0327BAC 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.47 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
