Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEC47D2CC
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fwQyYQutaJMIltrDuwWSVdjvRnnyTHnoaIy9K1Y6yk0=; b=rqcaszxNvYvDWwWW1+Jkyx7Co
	HLaM4yUfgQh2T3PoKUSNjTDohOayU/v9oJqBfZlAUIo0hj7/o5GoAJkJDju0zJPNsIS2seFly45Jx
	aGTlmJaCID/PnqBngVa2xbGO6UXo6H8UYAlpXWBiLUTRnrTI5e5NV1oDlCkuwJV3xJYNk/o8unSuY
	LFgaVslNrTHTI5T6Nwk0v10FxIYAgNlXX+4FLDsVPascp2yEVQ9sUHVWygNIVSGxB1bxXXS5pArf/
	1htvtQyNL52Q/Je+58FOj/YtKcjo6v1kFDVme1y3pTRiaDPetHvu2bKSBt2Dzv8355anECKPmhjtA
	IC8iTcGFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszoq-0001qn-FY; Thu, 01 Aug 2019 01:23:48 +0000
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszol-0001q7-RL
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:23:45 +0000
Received: by mail-pl1-f174.google.com with SMTP id ay6so31346309plb.9
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:23:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YMJLP/Z2/sPM5mnGX8TczkKp0ve8xzy8YvQsjBmg/eQ=;
 b=Pbke/QglSECdBg50fndaRoDGw+KV4kKHeNqZJGhqjC8CoCm0biM4T8y/tUCbIq1AeI
 DrfVZivEZFEOm+C7B+HJTBxsWdsHoZ6oIts25cvmyPpBuMvA5qI/PBFOAUcMnNFo96GV
 +Spa37NOv/hW6StQEa7pvFwpNAYUXIZtjVJ88U1cU9jy2k0BR2A5HdFpONWmsvUdOZos
 tx3a7RrCF9b5diwd92MRjFdOLIUXxL/8vAYjK6axzsK3b8+0658iw5CoDJAkBJmp5sBg
 wC96jlr6xD6ZZowgo+XpehMlfQrwHCo4ecZ3SFKqYYaHLSh8HomfWAXc4gOXmgQmwOBi
 +o0Q==
X-Gm-Message-State: APjAAAUJVvtmQ7A/vECnp/GCu6fp2G0gyE8OHQ4vB/PCanDdH+cvpqzR
 Vqyo1S3bnITbKYS2QNq/5a9ebqZk
X-Google-Smtp-Source: APXvYqxoUGbwkFR8nmcpxbM11WcVeenCUOJJ9d8eU0/Ql6KbC4KrlHk/xR7b7zRM6BDON3e9qx1msg==
X-Received: by 2002:a17:902:2926:: with SMTP id
 g35mr122630095plb.269.1564622622381; 
 Wed, 31 Jul 2019 18:23:42 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id j16sm2498864pjz.31.2019.07.31.18.23.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:23:41 -0700 (PDT)
Subject: Re: [PATCH] nvme: trace bio completion
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190724134755.96315-1-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <931d9159-ebbc-f0f4-dcc8-97c379342d9f@grimberg.me>
Date: Wed, 31 Jul 2019 18:23:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724134755.96315-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_182343_882019_CD6BCEB7 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
