Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D63FBEE
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 16:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CDF1lwUI3zXvD7We4jlE5XK43yTEbV2X3a+gcnscyYE=; b=J/jdgBvDVyefotz5l2lTEkaFf
	SDJha+i7yJEP9gaX2LqdhHTiKYxH1XY0RUBUpifAzSK8YW7/VrC+b/7K/GR75P8dsHe7UlZ2PEV5D
	6crCddi7KXQ+6vaYZUj4FKG/RWsxQ+VJnJVZOik1tcaAsK8tJb9LNgxOhTkti9f6EpM/qnlBUi7hl
	4UzeKgt1Pd99iuf8Ak64ENJDHtSdI4Mhe2S0gm7/WdksoScCxQPylb10nWDp2oPeo7tCLjqmDtMfI
	G/Y8p5dYgnf2nIBNUKDXFbKCBs3JDulbFbefM1xTIEOd8b4wQshmi4h4dTA3LY11kJUXOXrZov3f0
	7q9lH8efg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLU9n-0000FW-CX; Tue, 30 Apr 2019 14:54:55 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLU9i-0000Eq-T6
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 14:54:52 +0000
Received: by mail-pf1-f196.google.com with SMTP id 10so7186216pfo.5
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 07:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D0MOLqGza+zDYgMUiL+GvE1ZORCJlBN2WIdJEcmbDqU=;
 b=a8vA7Kvx3GWeDT4TSKlu2+nlC54XKVKr7sBUVJCEUSJJXZ88QXqftMAfJAH3wTetkx
 EgyhwrpChnQbrBmVU/+r1IY8CaYIy7C0Gi3H/zY1+1U3iB0X+3hFGy4IYnx3dz0e1av0
 hwm+oEFEWT5BfiiNMXqb/WZiVLLSCifeeQejJ1eonIEN4rcdBNXsxqFrsXm7VUvlqp80
 Py2+lls02wiezXonmVsppZvSNHLFIqXi8lF7WtyDztH/Y2A7FcD2rOFModtDdFw2Pc22
 ko6BaplAnilMzFOm2JmMOloWuo6ZnIllR68jWisx101lm/zA73PRU46CQcTQ+uCXKI+m
 A9Qg==
X-Gm-Message-State: APjAAAXAAxrpcJNQq/CF5NN8B2sZBXOL8JGJNwp7Vir98VapJQHuNxxO
 N5dp/brd6M5PuARlBl95q4I=
X-Google-Smtp-Source: APXvYqxDo52PtQXOaAq/k02M5LzKyKR+ZZG9DYOIC3JyLMUvOExIH3yIlPoaVy8jCMTtV1fGj9xXUw==
X-Received: by 2002:a63:e550:: with SMTP id z16mr10241740pgj.329.1556636089252; 
 Tue, 30 Apr 2019 07:54:49 -0700 (PDT)
Received: from [192.168.0.36] ([12.219.131.58])
 by smtp.gmail.com with ESMTPSA id j14sm47175393pfa.57.2019.04.30.07.54.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 07:54:48 -0700 (PDT)
Subject: Re: [PATCH nvme-cli] nvme_fc auto-connect scripts
To: Hannes Reinecke <hare@suse.de>, Keith Busch <keith.busch@intel.com>
References: <20190430064359.24905-1-hare@suse.de>
 <79a99c17-8f2d-3b44-057a-38c9d9e5c85e@grimberg.me>
 <bc7f1739-0a3a-4b19-fcca-6852d62268d8@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <59e11128-0bb5-826a-dcc1-10cec165b4be@grimberg.me>
Date: Tue, 30 Apr 2019 07:54:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bc7f1739-0a3a-4b19-fcca-6852d62268d8@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_075450_939125_4EF7C910 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Hannes,
>>
>> I added these to the discovery log change stuff, which
>> makes nvme-fc-autoconnect service a unified service not just for
>> FC. I thought you had a look at the series.
> 
> There had been some fixes to it (namely changing it to a 'simple' 
> service instead of 'oneshot', and adding an nvmefc-connect.target to 
> stop all running instances).
> So I've just posted it here for completeness; I've found it rather weird 
> sending a patch to a non-merged patchset.
> Do feel free to include it in your patchset.

Sure, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
