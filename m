Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EF6FE21
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 18:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FVswmrswYfPp1DSZ+tNl+iKfewUpVOrdfuocb3/7u0M=; b=oqlLXrUAslGABkvfvtSbffp++
	vjc2V/ld6QaacxTM++RN2N4ykj9zF0ybZs/tDxxeAtszgCaclPo9t9p/8Yu75ci2ShP/XR4VQ9PMf
	SCBcXKcdU/olQxzkRhIrV/jxGXufXIj/gGRsbhVwVGCjW2y9ufbRmSww3hHWXRUrR6i0uq2ftKSnu
	Gga6vbjI4Tzdr8BBScK3xof8Kszpbj5KtozmfICRyq6vAvaVA4NkK2rJiJs933fg+xNrex6I3yj04
	3exKdGULow2jz9Uwwul/wkBZMLcDFBfjMnjH/aUkDtzuMuWYmwuudf0j4WnKDTBUagvZU84/cW5PP
	Fnfb60ydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVvR-0005M5-8u; Tue, 30 Apr 2019 16:48:13 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVvM-0005LN-3V
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 16:48:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 09:48:06 -0700
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="138766149"
Received: from unknown (HELO [10.232.112.165]) ([10.232.112.165])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES128-SHA;
 30 Apr 2019 09:48:05 -0700
Subject: Re: [nvme-cli 1/9] tests/nvme_writezeros_test.py: check if write
 zeroes is supported
To: Hannes Reinecke <hare@suse.de>, Keith Busch <keith.busch@intel.com>
References: <20190430060554.24368-1-hare@suse.de>
 <20190430060554.24368-2-hare@suse.de>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <add6c949-3711-e7ee-5fd5-e13dfc905b29@intel.com>
Date: Tue, 30 Apr 2019 10:48:06 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430060554.24368-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_094808_195442_59F28EE5 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 4/30/2019 12:05 AM, Hannes Reinecke wrote:
> Before testing the WRITE ZEROS command we should be testing the
> ONCS value of the IDENTIFY CONTROLLER command to figure out if
> the command is supported.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   tests/nvme_test.py            | 23 +++++++++++++++++++++++
>   tests/nvme_writezeros_test.py | 15 ++++++++-------
>   2 files changed, 31 insertions(+), 7 deletions(-)
> 
> diff --git a/tests/nvme_test.py b/tests/nvme_test.py
> index 80939dc..1c17ba1 100644
> --- a/tests/nvme_test.py
> +++ b/tests/nvme_test.py
> @@ -253,6 +253,29 @@ class TestNVMe(object):
>           return int(nvm_format)
>   
>       @tools.nottest
> +    def get_oncs_write_zeroes(self):
> +        """ Wrapper for extracting write zeroes command support.
> +            - Args:
> +                - None
> +            - Returns:
> +                - true if supported.
> +        """
> +        pattern = re.compile("^oncs[ ]+: [0-9]", re.IGNORECASE)
> +        oncs = 0
> +        get_ctrl_id = "nvme id-ctrl " + self.ctrl
> +        proc = subprocess.Popen(get_ctrl_id,
> +                                shell=True,
> +                                stdout=subprocess.PIPE)
> +        err = proc.wait()
> +        assert_equal(err, 0, "ERROR : reading oncs value failed")
> +
> +        for line in proc.stdout:
> +            if pattern.match(line):
> +                oncs = line.split(":")[1].strip()
> +                break
> +        return int(oncs, 16) & 8
> +
> +    @tools.nottest
>       def delete_all_ns(self):
>           """ Wrapper for deleting all the namespaces.
>               - Args:
> diff --git a/tests/nvme_writezeros_test.py b/tests/nvme_writezeros_test.py
> index 157fd78..e549f3b 100644
> --- a/tests/nvme_writezeros_test.py
> +++ b/tests/nvme_writezeros_test.py
> @@ -93,10 +93,11 @@ class TestNVMeWriteZeros(TestNVMeIO):
>           return 0 if filecmp.cmp(self.zero_file, self.read_file) is True else 1
>   
>       def test_write_zeros(self):
> -        """ Testcae main """
> -        assert_equal(self.nvme_write(), 0)
> -        assert_equal(self.nvme_read(), 0)
> -        assert_equal(self.validate_write_read(), 0)
> -        assert_equal(self.write_zeroes(), 0)
> -        assert_equal(self.nvme_read(), 0)
> -        assert_equal(self.validate_zeroes(), 0)
> +        """ Testcase main """
> +        if self.get_oncs_write_zeroes() == 1:

I think you'll either need to shift the bit down in fhte get function, 
check here for 0x08, of check for a True condition


> +            assert_equal(self.nvme_write(), 0)
> +            assert_equal(self.nvme_read(), 0)
> +            assert_equal(self.validate_write_read(), 0)
> +            assert_equal(self.write_zeroes(), 0)
> +            assert_equal(self.nvme_read(), 0)
> +            assert_equal(self.validate_zeroes(), 0)
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
