Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560F119B13E
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 18:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDCeyhMK394MHJCn96fT7ujk99ASnGoXUpD+9GzYZiU=; b=pDGmzcWAyDJmU8
	Qy/FA18rkwmlGjAQ4T2nkE3BFYN+F/Gj4OBZWhxbL3bRMAelS7qfavzNrgatrxg6M/cs1+shMziEO
	LEmpka8K1EEfmVu2ObGAY3tNsXIhTjiTMfNS48k23U3JlWtcBABlG8f/iZxh9vG1N65EVzJOvge/q
	mCs58e99gI1Ux2nDKuJpx5EgSzO0ujnoaZ/YSTHS/OFTYj97dMQ8SUT+Op3i2JI2FyWc4niTQ50Ia
	ZkZmVPcOOjYj45TaYdhDbS1X5wXS3YI6oYIGL8boTxt9t0SFkmMngIq9zfwTKIP3tLap4ZNvHoomD
	0N25GHi6aaxwiG593dhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgKF-0006jN-8t; Wed, 01 Apr 2020 16:34:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgKA-0006fk-53
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 16:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585758879;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PPIndGqtp47gmEnhOnLZsDcspTmJhJqJQwCdryuOuDA=;
 b=Beb7luF7mR/XjNBZXoDOjkMK8QC+LxY1alFo+0XUqTedf2TjI8JDHaItYCe91Ith72FKx5
 iONlm4OqkPZ0YeOZb8mmu/hPTyTWgkxryAtvn+neVar4ug4W4niPpnNLgr/gV+A3vzDgq0
 I6/AGRracOgmIv5YFo4GUW5RI1+gdSc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-5rHOUhQaNY6d4Hp8pP2jNw-1; Wed, 01 Apr 2020 12:34:37 -0400
X-MC-Unique: 5rHOUhQaNY6d4Hp8pP2jNw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 548A6477;
 Wed,  1 Apr 2020 16:34:36 +0000 (UTC)
Received: from [10.3.128.6] (unknown [10.3.128.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD00996B93;
 Wed,  1 Apr 2020 16:34:35 +0000 (UTC)
Subject: Re: nvmet and stable API
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <d4060208-ec69-3211-277c-d151be302555@redhat.com>
 <c89ef694-b447-5e2e-429c-bc449b3c57b4@grimberg.me>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <cae7b76c-06a4-d870-22d5-ec09cd57354d@redhat.com>
Date: Wed, 1 Apr 2020 11:34:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <c89ef694-b447-5e2e-429c-bc449b3c57b4@grimberg.me>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_093442_480369_D8A8C3C2 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: tasleson@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/25/20 1:58 AM, Sagi Grimberg wrote:

> We don't have an API for python. I sort of assumed that this will
> be contributed by the people that want/need it.

Maybe, I'm interpreting this statement incorrectly, if so please
clarify.  I'm reading this as write what you need for whatever language
to configfs.  This works and it's not difficult to do, but what to do
for persistence?

Try to write compatible JSON output across code bases and supported
kernel features?  Have everyone fork & exec "nvmetcli save"?  Write out
your own file and document not to use incompatible stacks?

Additionally, none of this addresses a potential race condition between
two or more processes with different implementations making concurrent
changes to configfs and getting the configuration saved with no lost
changes.

Suggestions?

Thanks,
Tony



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
